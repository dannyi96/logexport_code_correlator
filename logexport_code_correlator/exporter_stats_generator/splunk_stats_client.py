#! /Library/Frameworks/Python.framework/Versions/3.7/bin/python3
import sys
import csv
from wsgiref import headers
import requests
import time
import splunklib.client
import splunklib.results

class SplunkStatsClient(BaseStatsClient):
    def __init__(self, host, username, password, index, scheme='https'):
        super.__init__()
        self.scheme = scheme
        # import socket; socket.getaddrinfo('localhost', 8000)
        self.client = splunklib.client.connect(
                            host=host, 
                            #port=port, 
                            username=username, 
                            password=password, 
                            autologin=True,
                            scheme=self.scheme
                    )
        self.splunk_client = splunk_client
        self.index = index

    def generate_log_stats(self, multiprocessing=False):
        pass

    def createSplunkJob(self, query):
        print(f"createSplunkJob:: Creating Splunk Job with query {query}")
        try:
            job = self.client.jobs.create(query)
            return job
        except Exception as ex:
            ex.args = (
                f"Exception in creating Splunk job with query {query}: {ex}",
            )
            raise


    def isSplunkJobDone(self, job):
        return job.is_done()


    def getSplunkJobResults(self, job, timeout=180):
        print(f'getSplunkJobResults: getting result of job with with sid {job.sid}')
        totalWaitTime = 0
        while not job.is_done() and totalWaitTime < timeout:
            time.sleep(5)
            totalWaitTime += 5
        
        isJobComplete = job.is_done()
        eventCount = int(job._state.content.eventCount)
        print(f'getSplunkJobResults: job with sid {job.sid} fully completed={isJobComplete}')
        
        rr = splunklib.results.JSONResultsReader(job.results(output_mode='json'))
        response = []
        for result in rr:
            if isinstance(result, dict):
                # response example
                # {
                #     "_bkt":"main~0~3829A1A8-63D7-420D-9A1A-7D2C49EB2A1F",
                #     "_cd":"0:11328",
                #     "_indextime":"1667744073",
                #     "_raw":"log line",
                #     "_serial":"0",
                #     "_si":[
                #         "DESKTOP-PT24Q0N",
                #         "main"
                #     ],
                #     "_sourcetype":"csv",
                #     "_time":"2022-11-06T19:44:33.000+05:30",
                #     "host":"DESKTOP-PT24Q0N",
                #     "index":"main",
                #     "linecount":"83",
                #     "source":"log_stats_template.csv",
                #     "sourcetype":"csv",
                #     "splunk_server":"DESKTOP-PT24Q0N"
                # }
                response.append(result)
            elif isinstance(result, splunklib.results.Message):
                print(f'Diagnostic messages encountered {result}')

        if not isJobComplete:
            self.stop_splunk_job(job)
        print(response)
        return isJobComplete, response, eventCount


    def stop_splunk_job(self, job):
        sid = job.sid
        print(f'stop_splunk_job: stopping job with sid={sid}')
        # attempt cancel job
        try:
            job.cancel()
        except Exception as ex:
            print(f'stop_splunk_job: failed to stop job with sid={sid}')
            return
        
        print(f'stop_splunk_job: stopped job with sid={sid}')

    def prepare_batch_query(self, log_queries):
        return " OR ".join([ "( " + log_query[1] + " )" for log_query in log_queries])

    def dump_batch_to_csv(self, batched_rows, tot_events, tot_bytes):
        new_rows = [[row[0], row[1], tot_events, tot_bytes, "UPPER_BOUND"] for row in batched_rows ]
        self.persist_stats_data(new_rows)
    
    def batch_analyse_dump(self, log_queries, threshold):
        batched_query = self.prepare_batch_query(log_queries)
        query = self.generate_splunk_query(batched_query)
        
        try:
            job = self.splunk_client.createSplunkJob(query)
        except Exception as ex:
            print(f'Exception {ex}')
        isJobComplete, results, tot_events  = self.splunk_client.getSplunkJobResults(job, timeout=120)
        tot_bytes = results[0]['bytes']
        dump_status = False
        if tot_events <= threshold:
            dump_status = True
            self.dump_batch_to_csv(log_queries, tot_events, tot_bytes)
        
        return dump_status            

    def sequence_analyse_dump(self, log_queries):
        for log_query in log_queries:
            query = self.generate_splunk_query(log_query[1])
            try:
                job = self.splunk_client.createSplunkJob(query)
            except Exception as ex:
                print(f'Exception {ex}')
            isJobComplete, results, tot_events  = self.splunk_client.getSplunkJobResults(job, timeout=120)
            tot_bytes = results[0]['bytes']
            accuracy = "PRECISE" if isJobComplete == True else "LOWER_BOUND"
            self.persist_stats_data([[ log_query[0], log_query[1], tot_events, tot_bytes, accuracy]])

    def generate_splunk_query(self, log_filter):
        splunk_query = (f"search index={self.index} {log_filter} "
                        "| eval bytes=len(_raw) |"
                        "| stats sum(bytes) as bytes'")
        return splunk_query
 
    def analyse_log_csv(self, file_name, start_index=0, batch_size=1, threshold=10000000):
        with open(file_name) as csv_file:
            csv_reader = csv.reader(csv_file, delimiter='\t')
            lines = list(csv_reader)
            
            for row_no in range(start_index, len(lines), batch_size):
                batched_rows = lines[row_no: row_no+batch_size]
                batch_analyse_dump_status = self.batch_analyse_dump(batched_rows, threshold)
                if batch_analyse_dump_status == False:
                    self.sequence_analyse_dump(batched_rows)


if __name__ == '__main__':
    print('='*200)    
    splunk_stat_generator = SplunkStatsClient(host='localhost', 
                                username='danielis', 
                                password='danielis',
                                index='main') 
    splunk_stat_generator.analyse_log_csv(
        file_name='log_stats_template.csv', 
        start_index=0, 
        batch_size=10, 
        threshold=100000000
    )
    print('='*200)
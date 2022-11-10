#! /Library/Frameworks/Python.framework/Versions/3.7/bin/python3
import sys
import csv
from wsgiref import headers
import requests
import time
import splunklib.client
import splunklib.results
from logexport_code_correlator.persistor.csvpersistor import CSVPersistor

class SplunkStatsClient(ExporterClient):
    def __init__(self, *kwargs):
        super.__init__()
        host = kwargs.get('host')
        username = kwargs.get('username')
        password = kwargs.get('password')
        index = kwargs.get('index')
        scheme = = kwargs.get('scheme', 'https')

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


    def get_stats_for_log(self, log_line):
        results = ( False, [], 0 )
        try:
            query = self.__prepare_query(log_line)
            job = self.client.jobs.create(query)
            results = self.__getSplunkJobResults(job)
        except:
            print(f"Exception in creating Splunk job with query {query}: {ex}")

        return results

    def get_stats_for_logs(self, log_lines):
        results = ( False, [], 0 )
        try:
            query = self.__prepare_batch_query(log_lines)
            job = self.client.jobs.create(query)
            results = self.__getSplunkJobResults(job)
        except:
            print(f"Exception in creating Splunk job with query {query}: {ex}")

        return results


    def __getSplunkJobResults(self, job, timeout=180):
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
            print(f'stop_splunk_job: stopping job with sid={sid}')
            job.cancel()
            print(f'stop_splunk_job: stopped job with sid={sid}')
        
        print(response)
        return isJobComplete, response, eventCount


    def __prepare_batch_query(self, log_queries):
        return " OR ".join([ "( " + log_query[1] + " )" for log_query in log_queries])
    
    def __prepare_query(self, log_filter):
        splunk_query = (f"search index={self.index} {log_filter} "
                        "| eval bytes=len(_raw) |"
                        "| stats sum(bytes) as bytes'")
        return splunk_query

    # def __batch_analyse_dump(self, log_queries, threshold):
    #     batched_query = self.prepare_batch_query(log_queries)
    #     query = self.generate_splunk_query(batched_query)
        
    #     try:
    #         job = self.splunk_client.createSplunkJob(query)
    #     except Exception as ex:
    #         print(f'Exception {ex}')
    #     isJobComplete, results, tot_events  = self.splunk_client.getSplunkJobResults(job, timeout=120)
    #     tot_bytes = results[0]['bytes']
    #     dump_status = False
    #     if tot_events <= threshold:
    #         dump_status = True
    #         self.persistor.dump_records([[row[0], row[1], tot_events, tot_bytes, "UPPER_BOUND"] 
    #                                         for row in batched_rows ])
        
    #     return dump_status            

    # def sequence_analyse_dump(self, log_queries):
    #     for log_query in log_queries:
    #         query = self.generate_splunk_query(log_query[1])
    #         try:
    #             job = self.splunk_client.createSplunkJob(query)
    #         except Exception as ex:
    #             print(f'Exception {ex}')
    #         isJobComplete, results, tot_events  = self.splunk_client.getSplunkJobResults(job, timeout=120)
    #         tot_bytes = results[0]['bytes']
    #         accuracy = "PRECISE" if isJobComplete == True else "LOWER_BOUND"
    #         self.persistor.dump_records([[ log_query[0], log_query[1], tot_events, tot_bytes, accuracy]])

    # def analyse_log_csv(self, file_name, start_index=0, batch_size=1, threshold=10000000):
    #     with open(file_name) as csv_file:
    #         csv_reader = csv.reader(csv_file, delimiter='\t')
    #         lines = list(csv_reader)
            
    #         for row_no in range(start_index, len(lines), batch_size):
    #             batched_rows = lines[row_no: row_no+batch_size]
    #             batch_analyse_dump_status = self.batch_analyse_dump(batched_rows, threshold)
    #             if batch_analyse_dump_status == False:
    #                 self.sequence_analyse_dump(batched_rows)


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
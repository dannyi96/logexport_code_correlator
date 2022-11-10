#! /Library/Frameworks/Python.framework/Versions/3.7/bin/python3
import sys
import time
import splunklib.client
import splunklib.results
from src.exporter_clients.exporter_client import ExporterClient
from src.query_generators.splunk_query_generator import SplunkQueryGenerator


class SplunkClient(ExporterClient):
    def __init__(self, **kwargs):
        host = kwargs.get('host')
        username = kwargs.get('username')
        password = kwargs.get('password')
        index = kwargs.get('index')
        scheme = kwargs.get('scheme', 'https')

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
        self.query_generator = SplunkQueryGenerator()


    def get_stats_for_log(self, log_line, **kwargs):
        results = ( False, [], 0 )
        try:
            index = kwargs.get('index', 'main')
            query = self.query_generator.generate_query_for_logs(log_line, index=index)
            job = self.client.jobs.create(query)
            results = self.__getSplunkJobResults(job)
        except Exception as ex:
            print(f"Exception in creating Splunk job with query {query}: {ex}")

        return results

    def get_stats_for_logs(self, log_lines, **kwargs):
        results = ( False, [], 0 )
        try:
            index = kwargs.get('index', 'main')
            query = self.query_generator.generate_query_for_logs(log_lines, index=index)
            job = self.client.jobs.create(query)
            results = self.__getSplunkJobResults(job)
        except Exception as ex:
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
            print(f'stop_splunk_job: stopping job with sid={job.sid}')
            job.cancel()
            print(f'stop_splunk_job: stopped job with sid={job.sid}')
        
        print(response)
        return isJobComplete, response, eventCount


if __name__ == '__main__':
    print('='*200)    
    splunk_stat_generator = SplunkClient(host='localhost', 
                                username='danielis', 
                                password='danielis',
                                index='main') 
    splunk_stat_generator.get_stats_for_logs( [ "test" ])
    print('='*200)
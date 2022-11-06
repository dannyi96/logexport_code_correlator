#! /Library/Frameworks/Python.framework/Versions/3.7/bin/python3
import sys
import csv
from wsgiref import headers
import requests
import time
import browser_cookie3
import splunklib.client
import splunklib.results

class SplunkClient:
    def __init__(self, host, username, password, scheme='https'):
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


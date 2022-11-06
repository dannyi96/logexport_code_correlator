#! /Library/Frameworks/Python.framework/Versions/3.7/bin/python3
import sys
import csv
from wsgiref import headers
import requests
import time
import browser_cookie3


class SplunkClient:
    def __init__(self, base_url, headers):
        self.base_url = base_url
        self.headers = headers

    def reload_cookies(self):
        print(self.base_url)
        cj = browser_cookie3.chrome(domain_name='citrixsys.splunkcloud.com')
        cookies = '; '.join([ cookie.name+"="+cookie.value for cookie in cj])
        splunk_form_key = [ cookie.value for cookie in cj if cookie.name=='splunk_csrf_token' ][0]
        self.headers['Cookie'] = cookies
        self.headers['X-Splunk-Form-Key'] = splunk_form_key

    def createSplunkJob(self, query):
        print('createSplunkJob:: Creating Splunk Job with query %s'%(query))
        # Job has time range for July 17 2022
        #self.reload_cookies()
        create_job_request = requests.post(self.base_url, headers=self.headers, 
                data='rf=*&auto_cancel=62&status_buckets=300&output_mode=json&custom.display.page.search.mode=smart&custom.dispatch.sample_ratio=1&custom.display.page.search.tab=statistics&custom.display.general.type=statistics&custom.search=%s&custom.dispatch.earliest_time=1658016000&custom.dispatch.latest_time=1658102400&search=search+%s&earliest_time=1658016000&latest_time=1658102400&ui_dispatch_app=search_citrixcloud&preview=1&adhoc_search_level=smart&indexedRealtime=&sample_ratio=1&check_risky_command=false'%(query, query))
        if create_job_request.ok:
            print('createSplunkJob:: Splunk Job created successfully')
            create_job_response = create_job_request.json()
            return create_job_response['sid']
        elif create_job_request.status_code == 401:
            print('createSplunkJob:: Unauthorized. Please provide valid token!!')
            #self.reload_cookies()
            return 'UNAUTHORIZED'
        else:
            print('createSplunkJob:: Splunk Job creation failed status=,+' + str(create_job_request) + 'content=' + str(create_job_request.content))
            return 'Job Creation Failed'

    def get_splunk_job_stats(self, sid):
        try:
            #self.reload_cookies()
            job_details_request = requests.get(self.base_url + "/%s?output_mode=json"%(sid), headers=self.headers)
            if job_details_request.ok:
                job_details_response = job_details_request.json()
                isDone = job_details_response["entry"][0]["content"]["isDone"]
                eventCount = job_details_response["entry"][0]["content"]["eventCount"]
                print('get_splunk_job_stats:: sid=%s, isDone=%s, eventCount=%s'%(sid, isDone, eventCount))
                return (isDone, eventCount)
            elif job_details_request.status_code == 401:
                print('get_splunk_job_stats:: Unauthorized. Please provide valid token!!')
                #self.reload_cookies()
                return (-2, -2)
            else:
                print('get_splunk_job_stats:: Splunk Job creation failed status=,+' + str(job_details_request) + 'content=' + str(job_details_request.content))
                return (-1, -1)
        except:
            return (-2, -2)

    def get_splunk_event_bytes(self, sid):
        #self.reload_cookies()
        get_events_request = requests.get(self.base_url + "/%s/results_preview?output_mode=json_rows&count=1&offset=0&show_metadata=true&add_summary_to_metadata=false&_=1645542148018"%(sid), headers=self.headers)
        if get_events_request.ok:
            get_events_response = get_events_request.json()
            total_bytes = get_events_response["rows"][0][0]
            print('get_splunk_event_bytes:: sid=%s, total_bytes=%s'%(sid, total_bytes))
            return total_bytes
        elif get_events_request.status_code == 401:
            print('get_splunk_event_bytes:: Unauthorized. Please provide valid token!!')
            #self.reload_cookies()
            return -2
        else:
            print('get_splunk_event_bytes:: Splunk Job creation failed status=,+' + str(get_events_request) + 'content=' + str(get_events_request.content))
            return -1

    def stop_splunk_job(self, sid):
        #self.reload_cookies()
        stop_job_request = requests.post(self.base_url + "/%s/control"%(sid), headers=self.headers, data='output_mode=json&action=finalize')
        if stop_job_request.ok:
            print('stop_splunk_job: Succesfully stopped job with sid=%s'%(sid))
        elif stop_job_request.status_code == 401:
            print('stop_splunk_job:: Unauthorized. Please provide valid token!!')
            #self.reload_cookies()
        else:
            print('stop_splunk_job: Failed to stop job with sid=%s. Response=%s'%(sid, stop_job_request.content))


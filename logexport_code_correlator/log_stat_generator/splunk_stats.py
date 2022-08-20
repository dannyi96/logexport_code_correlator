#! /Library/Frameworks/Python.framework/Versions/3.7/bin/python3
import sys
import csv
from wsgiref import headers
import requests
import time
import browser_cookie3

# if len(sys.argv) != 6:
#     print('ERROR')
#     print("  Expected usage: ./get_log_stats.py <input_log_csv> <output_log_csv> <start_index> <batch_size> <threshold>")
#     exit()

input_log_csv = sys.argv[1]
output_log_csv = sys.argv[2]
start_index = int(sys.argv[3])
batch_size = int(sys.argv[4])
threshold = int(sys.argv[5])

# BASE_URL =  'https://citrixsys.splunkcloud.com/en-US/splunkd/__raw/servicesNS/danielis/search_citrixcloud/search/jobs'

# HEADERS = {
#     'Connection': 'keep-alive',
#     'sec-ch-ua': '" Not A;Brand";v="99", "Chromium";v="98", "Google Chrome";v="98"',
#     'sec-ch-ua-mobile': '?0',
#     'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36',
#     'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
#     'Accept': 'text/javascript, text/html, application/xml, text/xml, */*',
#     'X-Requested-With': 'XMLHttpRequest',
#     'sec-ch-ua-platform': 'macOS',
#     'Origin': 'https://citrixsys.splunkcloud.com',
#     'Sec-Fetch-Site': 'same-origin',
#     'Sec-Fetch-Mode': 'cors',
#     'Sec-Fetch-Dest': 'empty',
#     'Accept-Language': 'en-GB,en-US;q=0.9,en;q=0.8',
# }
class SplunkLogStatGenerator:
    def __init__(self, base_url, headers):
        self.fields = ["file", "log", "events", "bytes"]
        self.base_url = base_url
        self.headers = headers
       
    def get_stats_from_file(self, output_log_csv): 
        with open(output_log_csv, 'a') as output_log_csv_fp: 
            # creating a csv writer object 
            csvwriter = csv.writer(output_log_csv_fp, delimiter='\t') 
            # writing the fields 
            csvwriter.writerow(self.fields)

    def reload_cookies(self):
        cj = browser_cookie3.chrome(domain_name='citrixsys.splunkcloud.com')
        global HEADERS
        cookies = '; '.join([ cookie.name+"="+cookie.value for cookie in cj])
        splunk_form_key = [ cookie.value for cookie in cj if cookie.name=='splunk_csrf_token' ][0]
        HEADERS['Cookie'] = cookies
        HEADERS['X-Splunk-Form-Key'] = splunk_form_key

    def createSplunkJob(self, query):
        print('createSplunkJob:: Creating Splunk Job with query %s'%(query))
        # Job has time range for July 17 2022
        self.reload_cookies()
        create_job_request = requests.post(self.base_url, headers=self.headers, data='rf=*&auto_cancel=62&status_buckets=300&output_mode=json&custom.display.page.search.mode=smart&custom.dispatch.sample_ratio=1&custom.display.page.search.tab=statistics&custom.display.general.type=statistics&custom.search=%s&custom.dispatch.earliest_time=1658016000&custom.dispatch.latest_time=1658102400&search=search+%s&earliest_time=1658016000&latest_time=1658102400&ui_dispatch_app=search_citrixcloud&preview=1&adhoc_search_level=smart&indexedRealtime=&sample_ratio=1&check_risky_command=false'%(query, query))
        if create_job_request.ok:
            print('createSplunkJob:: Splunk Job created successfully')
            create_job_response = create_job_request.json()
            return create_job_response['sid']
        elif create_job_request.status_code == 401:
            print('createSplunkJob:: Unauthorized. Please provide valid token!!')
            self.reload_cookies()
            return 'UNAUTHORIZED'
        else:
            print('createSplunkJob:: Splunk Job creation failed status=,+' + str(create_job_request) + 'content=' + str(create_job_request.content))
            return 'Job Creation Failed'

    def get_splunk_job_stats(self, sid):
        try:
            self.reload_cookies()
            job_details_request = requests.get(self.base_url + "/%s?output_mode=json"%(sid), headers=self.headers)
            if job_details_request.ok:
                job_details_response = job_details_request.json()
                isDone = job_details_response["entry"][0]["content"]["isDone"]
                eventCount = job_details_response["entry"][0]["content"]["eventCount"]
                print('get_splunk_job_stats:: sid=%s, isDone=%s, eventCount=%s'%(sid, isDone, eventCount))
                return (isDone, eventCount)
            elif job_details_request.status_code == 401:
                print('get_splunk_job_stats:: Unauthorized. Please provide valid token!!')
                self.reload_cookies()
                return (-2, -2)
            else:
                print('get_splunk_job_stats:: Splunk Job creation failed status=,+' + str(job_details_request) + 'content=' + str(job_details_request.content))
                return (-1, -1)
        except:
            return (-2, -2)

    def get_splunk_event_bytes(self, sid):
        self.reload_cookies()
        get_events_request = requests.get(self.base_url + "/%s/results_preview?output_mode=json_rows&count=1&offset=0&show_metadata=true&add_summary_to_metadata=false&_=1645542148018"%(sid), headers=self.headers)
        if get_events_request.ok:
            get_events_response = get_events_request.json()
            total_bytes = get_events_response["rows"][0][0]
            print('get_splunk_event_bytes:: sid=%s, total_bytes=%s'%(sid, total_bytes))
            return total_bytes
        elif get_events_request.status_code == 401:
            print('get_splunk_event_bytes:: Unauthorized. Please provide valid token!!')
            self.reload_cookies()
            return -2
        else:
            print('get_splunk_event_bytes:: Splunk Job creation failed status=,+' + str(get_events_request) + 'content=' + str(get_events_request.content))
            return -1

    def stop_splunk_job(self, sid):
        self.reload_cookies()
        stop_job_request = requests.post(self.base_url + "/%s/control"%(sid), headers=self.headers, data='output_mode=json&action=finalize')
        if stop_job_request.ok:
            print('stop_splunk_job: Succesfully stopped job with sid=%s'%(sid))
        elif stop_job_request.status_code == 401:
            print('stop_splunk_job:: Unauthorized. Please provide valid token!!')
            self.reload_cookies()
        else:
            print('stop_splunk_job: Failed to stop job with sid=%s. Response=%s'%(sid, stop_job_request.content))

    def get_stats(self, sid):
        total_time=0
        while(True):
            job_stats = self.get_splunk_job_stats(sid)
            if(total_time>=120):
                break
            if(job_stats[0] in (-1, -2) or job_stats[1] in (-1, -2)):
                return (job_stats[0], job_stats[1])
            if(job_stats[0]==True):
                print('get_stats: stats job has completed')
                break
            else:
                print('get_stats: sleeping for 5 seconds to wait for job to complete')
                total_time+=5
                time.sleep(5)

        eventCount = ( ">" if(total_time>=120) else "") + str(job_stats[1])

        total_bytes = 0 if job_stats[1] == 0 else self.get_splunk_event_bytes(sid)
        total_bytes = ( ">" if(total_time>=120) else "") + str(total_bytes)

        if(total_time>=120):
            self.stop_splunk_job(sid)
        
        return (eventCount, total_bytes)

    def dump_csv(self, new_rows):
        with open(output_log_csv, 'a') as output_log_csv_fp: 
            # creating a csv writer object 
            csvwriter = csv.writer(output_log_csv_fp, delimiter='\t') 
            # writing the data rows 
            csvwriter.writerows(new_rows)
    
    def prepare_batch_query(self, log_queries):
        return " OR ".join([ "( " + log_query[1] + " )" for log_query in log_queries])

    def dump_batch_to_csv(self, batched_rows, tot_events, tot_bytes):
        new_rows = []
        new_tot_events = "<"+str(tot_events) if self.strip_metachars(tot_events) != 0 else tot_events
        new_tot_bytes = "<"+str(tot_bytes) if self.strip_metachars(tot_bytes) != 0 else tot_bytes
        for row in batched_rows:
            new_rows.append([row[0], row[1], new_tot_events, new_tot_bytes])
        
        self.dump_csv(new_rows)

    def strip_metachars(self, stat):
        return int(str(stat).replace(">","").replace("<",""))

    def error_handle_stats(self, events, bytes):
        events = self.strip_metachars(events)
        bytes = self.strip_metachars(bytes)
        if events in (-1, -2) or bytes in (-1, -2):
            print('Exiting as tot_events=%s, tot_bytes=%s'%(events, bytes))
            exit()

    def batch_analyse_dump(self, log_queries, threshold):
        batched_query = self.prepare_batch_query(log_queries)
        query = 'index="production_ns_mas" %s | rex mode=sed "s/([\\r\\n]+)/##LF##/g"'%(batched_query) + \
            ' | makemv _raw delim="##LF##" | rename _raw as raw | mvexpand raw | rename raw as _raw|' + \
            ' search %s | eval bytes=len(_raw) | stats sum(bytes) as bytes'%(batched_query)
        sid = self.createSplunkJob(query)
        if sid == "UNAUTHORIZED" or sid == 'Job Creation Failed':
            print('Exiting for sid=%s'%(sid))
            exit()
        time.sleep(10)
        tot_events, tot_bytes = self.get_stats(sid)
        self.error_handle_stats(tot_events, tot_bytes)
        dump_status = False
        if self.strip_metachars(tot_events) <= threshold:
            self.dump_batch_to_csv(log_queries, tot_events, tot_bytes)
            dump_status = True
        return dump_status

    def sequence_analyse_dump(self, log_queries):
        for log_query in log_queries:
            query = 'index="production_ns_mas" %s | rex mode=sed "s/([\\r\\n]+)/##LF##/g"'%(log_query[1]) + \
                ' | makemv _raw delim="##LF##" | rename _raw as raw | mvexpand raw | rename raw as _raw|' + \
                ' search %s | eval bytes=len(_raw) | stats sum(bytes) as bytes'%(log_query[1])
            sid = self.createSplunkJob(query)
            if sid == "UNAUTHORIZED" or sid == 'Job Creation Failed':
                print('Exiting for sid=%s'%(sid))
                exit()
            time.sleep(10)
            tot_events, tot_bytes = self.get_stats(sid)
            self.error_handle_stats(tot_events, tot_bytes)
            self.dump_csv([[ log_query[0], log_query[1], tot_events, tot_bytes]])

    def analyse_log_csv(self, file_name, start_index, batch_size, threshold):
        with open(file_name) as csv_file:
            csv_reader = csv.reader(csv_file, delimiter='\t')
            lines = list(csv_reader)
            
            for row_no in range(start_index, len(lines), batch_size):
                batched_rows = lines[row_no: row_no+batch_size]
                batch_analyse_dump_status = self.batch_analyse_dump(batched_rows, threshold)
                if batch_analyse_dump_status == False:
                    self.sequence_analyse_dump(batched_rows)

# print('='*200)
# print("input_log_csv: %s, prefix: %s, start_index: %s, threshold: %s"
#     %(input_log_csv, start_index, batch_size, threshold))

# reload_cookies()
# analyse_log_csv(input_log_csv, start_index, batch_size, threshold)
# print('='*200)

#! /Library/Frameworks/Python.framework/Versions/3.7/bin/python3
import sys
sys.path.append('/mnt/c/Users/danny/scratchpad/logexport_code_correlator/logexport_code_correlator')
import csv
import time
from stat_generator.splunk_stat_generator.splunk_client import SplunkClient 

# if len(sys.argv) != 6:
#     print('ERROR')
#     print("  Expected usage: ./get_log_stats.py <input_log_csv> <output_log_csv> <start_index> <batch_size> <threshold>")
#     exit()

# input_log_csv = sys.argv[1]
# output_log_csv = sys.argv[2]
# start_index = int(sys.argv[3])
# batch_size = int(sys.argv[4])
# threshold = int(sys.argv[5])


class SplunkLogStatGenerator:
    def __init__(self, base_url, headers, index):
        self.fields = ["file", "log", "events", "bytes"]
        self.splunk_client = SplunkClient(base_url, headers)
        self.index = index

    def get_stats(self, sid):
        total_time=0
        while(True):
            job_stats = self.splunk_client.get_splunk_job_stats(sid)
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

        total_bytes = 0 if job_stats[1] == 0 else self.splunk_client.get_splunk_event_bytes(sid)
        total_bytes = ( ">" if(total_time>=120) else "") + str(total_bytes)

        if(total_time>=120):
            self.splunk_client.stop_splunk_job(sid)
        
        return (eventCount, total_bytes)

    def dump_csv(self, new_rows, output_log_csv='OUT.csv'):
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
        query = self.generate_splunk_query(batched_query)
        sid = self.splunk_client.createSplunkJob(query)
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
            query = self.generate_splunk_query(log_query[1])
            sid = self.splunk_client.createSplunkJob(query)
            if sid == "UNAUTHORIZED" or sid == 'Job Creation Failed':
                print('Exiting for sid=%s'%(sid))
                exit()
            time.sleep(10)
            tot_events, tot_bytes = self.get_stats(sid)
            self.error_handle_stats(tot_events, tot_bytes)
            self.dump_csv([[ log_query[0], log_query[1], tot_events, tot_bytes]])

    def generate_splunk_query(self, log_filter):
        splunk_query = f'index="{self.index}" {log_filter} | rex mode=sed "s/([\\r\\n]+)/##LF##/g"' \
                ' | makemv _raw delim="##LF##" | rename _raw as raw | mvexpand raw | rename raw as _raw|' \
                f' search {log_filter} | eval bytes=len(_raw) | stats sum(bytes) as bytes'
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
    splunk_stat_generator = SplunkLogStatGenerator(base_url='https://citrixsys.splunkcloud.com/en-US/splunkd/__raw/servicesNS/danielis/search_citrixcloud/search/jobs',
                                                   headers={
                                                    'Connection': 'keep-alive',
                                                    'sec-ch-ua': '" Not A;Brand";v="99", "Chromium";v="98", "Google Chrome";v="98"',
                                                    'sec-ch-ua-mobile': '?0',
                                                    'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36',
                                                    'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8',
                                                    'Accept': 'text/javascript, text/html, application/xml, text/xml, */*',
                                                    'X-Requested-With': 'XMLHttpRequest',
                                                    'sec-ch-ua-platform': 'macOS',
                                                    'Origin': 'https://citrixsys.splunkcloud.com',
                                                    'Sec-Fetch-Site': 'same-origin',
                                                    'Sec-Fetch-Mode': 'cors',
                                                    'Sec-Fetch-Dest': 'empty',
                                                    'Accept-Language': 'en-GB,en-US;q=0.9,en;q=0.8',
                                                    'Cookie': "ext_name=ojplmecpdpgccookcobabopnaifgidhf; splunkweb_csrf_token_8443=8295557155302205411; session_id_8443=da6d52479f592a874153bde8640bd30654529243; token_key=8295557155302205411; experience_id=23d56660-fb95-27cc-5464-10c6bdf8f325; 0.0.0=AP-7SBC7L5BZ8ML-2; spg_session=23d56660-fb95-27cc-5464-10c6bdf8f325; splunk_csrf_token=8295557155302205411; apt.sid=AP-7SBC7L5BZ8ML-2-1661033690407-74443246; apt.uid=AP-7SBC7L5BZ8ML-2-1661033690408-28776614.0.2.03909a4c-056e-4c08-b565-6efe986e76a5; splunkd_8443=0iFe2vQYBuWVJdrvj2dJTuqlnA537MZajQi5B46JNdc4HpP3j7AJAygu0qSPwIcV_abH8setZdWr5U1XuU5PzU4AY7wy5j0qwZuxu9gxpCUc0y_TVGBoFDHonVciNGoLI2IT6oLHT23xL4Q58jfGGZ1^gXYXlGSud22pI1Am1QV9WumbBlE7OegyQUDU1lVi_ATcOBw0_lxpmf87CrbhHYnPJEiYB6FqkOa^; AWSELB=67092D7F040FD11F00E7B075920502DA1D506737C0B61BC3F3261A59C21F55F91661BD90CE33D4A0EC81E3B3C8DAE4D0B5A0557C70B6EEC3154A1495F9C7124BE2A77C05DF2189AFF876BBF8C24473705E036D4D46",
                                                    'X-Splunk-Form-Key': "8295557155302205411"
                                                },
                                                index='production_ns_mas')
    splunk_stat_generator.analyse_log_csv('log_stats_template.csv', 0, 10, 100000000)
    print('='*200)
import csv
import time
from exporter_stat_generator.splunk.splunk_client import SplunkClient 

# if len(sys.argv) != 6:
#     print('ERROR')
#     print("  Expected usage: ./get_log_stats.py <input_log_csv> <output_log_csv> <start_index> <batch_size> <threshold>")
#     exit()

# input_log_csv = sys.argv[1]
# output_log_csv = sys.argv[2]
# start_index = int(sys.argv[3])
# batch_size = int(sys.argv[4])
# threshold = int(sys.argv[5])


class SplunkStatGenerator:
    def __init__(self, splunk_client, index):
        self.fields = ["file", "log", "events", "bytes", "accuracy"]
        self.splunk_client = splunk_client
        self.index = index


    def dump_csv(self, new_rows, output_log_csv='OUT.csv'):
        with open(output_log_csv, 'a') as output_log_csv_fp: 
            # creating a csv writer object 
            csvwriter = csv.writer(output_log_csv_fp, delimiter='\t') 
            # writing the data rows 
            csvwriter.writerows(new_rows)
    
    def prepare_batch_query(self, log_queries):
        return " OR ".join([ "( " + log_query[1] + " )" for log_query in log_queries])

    def dump_batch_to_csv(self, batched_rows, tot_events, tot_bytes):
        new_rows = [[row[0], row[1], tot_events, tot_bytes, "UPPER_BOUND"] for row in batched_rows ]
        self.dump_csv(new_rows)


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
            self.dump_csv([[ log_query[0], log_query[1], tot_events, tot_bytes, accuracy]])

    def generate_splunk_query(self, log_filter):
        splunk_query = f'search index="{self.index}" {log_filter} | rex mode=sed "s/([\\r\\n]+)/##LF##/g"' \
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
    splunkClient = SplunkClient(host='localhost', username='danielis', password='danielis')
    splunk_stat_generator = SplunkStatGenerator(splunk_client=splunkClient
                                ,index='main')    
    splunk_stat_generator.analyse_log_csv(
        file_name='log_stats_template.csv', 
        start_index=0, 
        batch_size=10, 
        threshold=100000000
    )
    print('='*200)
    
if __name__ == '__main__':
    from exporter_stat_generator.splunk.splunk_client import SplunkClient 
    from exporter_stat_generator.splunk.splunk_stat_generator import SplunkStatGenerator
    splunkClient = SplunkClient(host='localhost', username='danielis', password='danielis')
    splunk_stat_generator = SplunkStatGenerator(splunk_client=splunkClient ,index='main')
    splunk_stat_generator.analyse_log_csv(
    file_name='log_stats_template.csv', 
    start_index=0,
    batch_size=10,
    threshold=100000000
    )
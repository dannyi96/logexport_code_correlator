import csv
from src.data_models.log_stat import LogStat
from src.data_persistors.csv_persistor import CSVPersistor
from src.log_strings_extractor.regex_log_extractor import RegexLogLineExtractor

class StatsGenerator:
    def __init__(self, exporter_client):
        self.client = exporter_client
        self.log_extractor = RegexLogLineExtractor()
        self.persistor = CSVPersistor(file='log_stats.csv')
    
    def generate_stats(self, **kwargs):
        input_file_name = kwargs['filename']
        start_index = kwargs.get('start_index', 0)
        batch_size = kwargs.get('batch_size', 1)
        threshold = kwargs.get('threshold', 10^6)
        # extract logs
        self.log_extractor.extract_logs(input_file_name)
        # get log stats
        self.__analyse_log_csv('log.csv', start_index=start_index, 
                               batch_size=batch_size, threshold=threshold)
    
    def __analyse_log_csv(self, file_name, start_index=0, batch_size=1, threshold=10000000):
        with open(file_name) as csv_file:
            csv_reader = csv.DictReader(csv_file, delimiter='\t')
            # csv_reader = csv.reader(csv_file, delimiter='\t')
            lines = list(csv_reader)

            for row_no in range(start_index, len(lines), batch_size):
                batched_rows = [elem['logline'] for elem in lines[row_no: row_no+batch_size]]
                print(batched_rows)
                batch_analyse_dump_status = self.batch_analyse_dump(batched_rows, threshold)
                if batch_analyse_dump_status == False:
                    self.sequence_analyse_dump(batched_rows)

    def batch_analyse_dump(self, log_queries, threshold):
        isJobComplete, tot_bytes, tot_events = self.client.get_stats_for_log(log_queries)
        dump_status = False
        if tot_events <= threshold:
            dump_status = True
            self.persistor.dump_records([LogStat(log_query[0], log_query[1], tot_events, tot_bytes, "UPPER_BOUND").as_dict()
                                            for log_query in log_queries ])
        
        return dump_status            

    def sequence_analyse_dump(self, log_queries):
        
        for log_query in log_queries:
            isJobComplete, tot_bytes, tot_events = self.client.get_stats_for_log(log_query)
            accuracy = "PRECISE" if isJobComplete == True else "LOWER_BOUND"
            self.persistor.dump_record(LogStat(log_query[0], log_query[1], tot_events, tot_bytes, accuracy).as_dict())


if __name__ == '__main__':
    from src.exporter_clients.splunk_client import SplunkClient
    import os
    splunk_client = SplunkClient(host='localhost', 
                                username='danielis', 
                                password='danielis',
                                index='main')
    stat_generator = StatsGenerator(splunk_client)
    stat_generator.generate_stats(filename=os.getcwd()+'/tests/code_files/',
                                  start_index=0,
                                  batch_size=1,
                                 threshold=321401235)
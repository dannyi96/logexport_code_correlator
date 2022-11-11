import csv
from src.persistors.csv_persistor import CSVPersistor

class StatsGenerator:
    def __init__(self, exporter_client):
        self.client = exporter_client
        self.persistor = CSVPersistor(file='log_stats.csv')
    
    def generate_stats(self, **kwargs):
        input_file_name = kwargs['filename']
        start_index = kwargs['start_index']
        batch_size = kwargs['batch_size']
        threshold = kwargs['threshold']
        self.__analyse_log_csv(input_file_name, start_index=start_index, 
                               batch_size=batch_size, threshold=threshold)
    
    def __analyse_log_csv(self, file_name, start_index=0, batch_size=1, threshold=10000000):
        with open(file_name) as csv_file:
            csv_reader = csv.reader(csv_file, delimiter='\t')
            lines = list(csv_reader)
            
            for row_no in range(start_index, len(lines), batch_size):
                batched_rows = lines[row_no: row_no+batch_size]
                batch_analyse_dump_status = self.batch_analyse_dump(batched_rows, threshold)
                if batch_analyse_dump_status == False:
                    self.sequence_analyse_dump(batched_rows)

    def batch_analyse_dump(self, log_queries, threshold):
        isJobComplete, tot_bytes, tot_events = self.client.get_stats_for_log(log_queries)
        dump_status = False
        if tot_events <= threshold:
            dump_status = True
            self.persistor.dump_records([[log_query[0], log_query[1], tot_events, tot_bytes, "UPPER_BOUND"] 
                                            for log_query in log_queries ])
        
        return dump_status            

    def sequence_analyse_dump(self, log_queries):
        
        for log_query in log_queries:
            isJobComplete, tot_bytes, tot_events = self.client.get_stats_for_log(log_query)
            accuracy = "PRECISE" if isJobComplete == True else "LOWER_BOUND"
            self.persistor.dump_records([[ log_query[0], log_query[1], tot_events, tot_bytes, accuracy]])

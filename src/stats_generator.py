import dataclasses
from data_models import *
from data_persistors import *
from data_readers import *
from log_strings_extractor import *
from exporter_clients import *

class StatsGenerator:
    def __init__(self, exporter_client: ExporterClient, log_extractor: LogStringsExtractor, 
                 output_file: str='log_stats.csv', **kwargs: dict[str, Any]) -> None:
        self.client = exporter_client
        # extract logs
        self.logline_regex = kwargs.get("logline_regex", r'print\((.*)\)')
        self.codebase_dir = kwargs.get("codebase_dir", ".")
        self.logs_file = kwargs.get("logs_file", 'log.csv')
        self.start_index = kwargs.get('start_index', 0)
        self.batch_size = kwargs.get('batch_size', 10)
        self.threshold = kwargs.get('threshold', 10^6)
        
        self.log_extractor = log_extractor
        
        self.persistor = CSVPersistor(file=output_file, 
                                      headers=['filename', 'logline', 
                                               'accuracy', 'tot_events', 
                                               'tot_bytes'])
    
    def generate_stats(self, **kwargs: dict[str, Any]) -> None:
        # extract logs
        self.log_extractor.extract_logs(self.codebase_dir)
        self.log_csv_reader = CSVReader(self.logs_file)
        # get log stats
        self.__analyse_log_csv(start_index=self.start_index, 
            batch_size=self.batch_size, 
            threshold=self.threshold
        )
    
    def __analyse_log_csv(self, start_index: int = 0, batch_size: int = 10, threshold: int =10000000):
        batched_rows = self.log_csv_reader.read_batch(start_index, batch_size, 'logline')
        print(batched_rows)
        batch_analyse_dump_status = self.batch_analyse_dump(batched_rows, threshold)
        if batch_analyse_dump_status == False:
            self.sequence_analyse_dump(batched_rows)

    def batch_analyse_dump(self, log_queries: list[str], threshold: int):
        isJobComplete, tot_bytes, tot_events = self.client.get_stats_for_logs(log_queries)
        dump_status = False
        if tot_events <= threshold:
            dump_status = True
            self.persistor.dump_records([dataclasses.asdict(LogStat(log_query[0], log_query[1], tot_events, tot_bytes, Accuracy.UPPER_BOUND))
                                            for log_query in log_queries ])
        
        return dump_status            

    def sequence_analyse_dump(self, log_queries: list[str]):
        
        for log_query in log_queries:
            isJobComplete, tot_bytes, tot_events = self.client.get_stats_for_log(log_query)
            accuracy = Accuracy.PRECISE if isJobComplete == True else Accuracy.LOWER_BOUND
            self.persistor.dump_record(dataclasses.asdict(LogStat(log_query[0], log_query[1], tot_events, tot_bytes, accuracy)))


if __name__ == '__main__':
    import os
    splunk_client = SplunkClient(host='localhost', 
                                username='danielis', 
                                password='danielis',
                                index='main')

    log_extractor = RegexLogLineExtractor(
            logline_regex = r'print\((.*)\)', 
            logs_file = 'log.csv'
    )
    stat_generator = StatsGenerator(splunk_client,
                                    log_extractor,
                                codebase_dir=os.getcwd()+'/tests/code_files/',
                                  start_index=0,
                                  batch_size=10,
                                 threshold=321401235)
    stat_generator.generate_stats()
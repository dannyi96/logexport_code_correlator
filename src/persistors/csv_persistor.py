import csv
from src.persistors.base_persistor import BasePersistor

class CSVPersistor(BasePersistor):

    def __init__(self, **kwargs):
        self.file = kwargs.get('file', 'out.csv')
        self.headers = kwargs.get('headers')
        if self.headers:
            self.dump_header(self.headers)

    def dump_header(self, header_record):
         with open(self.file, 'w') as output_log_fp: 
            # creating a csv writer object 
            csvwriter = csv.writer(output_log_fp, delimiter='\t') 
            # writing the data rows 
            csvwriter.writerow(header_record)

    def dump_record(self, record):
         with open(self.file, 'a') as output_log_fp: 
            # creating a csv writer object 
            csvwriter = csv.writer(output_log_fp, delimiter='\t') 
            # writing the data rows 
            csvwriter.writerow(record)

    def dump_records(self, records):
         with open(self.file, 'a') as output_log_fp: 
            # creating a csv writer object 
            csvwriter = csv.writer(output_log_fp, delimiter='\t') 
            # writing the data rows 
            csvwriter.writerows(records)

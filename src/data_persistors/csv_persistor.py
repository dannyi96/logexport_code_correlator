import csv
from src.data_persistors.base_persistor import BasePersistor

class CSVPersistor(BasePersistor):

    def __init__(self, **kwargs):
        self.file = kwargs.get('file', 'out.csv')
        self.headers = kwargs.get('headers', [])
        self.__create_file()

    def __create_file(self):
         with open(self.file, 'w') as output_log_fp: 
            # creating a csv writer object 
            csvwriter = csv.DictWriter(output_log_fp, fieldnames = self.headers, delimiter='\t') 
            # writing headers (field names) 
            csvwriter.writeheader() 

    def dump_record(self, record):
         with open(self.file, 'a') as output_log_fp: 
            # creating a csv writer object 
            csvwriter = csv.DictWriter(output_log_fp, fieldnames = self.headers, delimiter='\t') 
            # writing the data rows 
            csvwriter.writerow(record)

    def dump_records(self, records):
         with open(self.file, 'a') as output_log_fp: 
            # creating a csv writer object 
            csvwriter = csv.DictWriter(output_log_fp, fieldnames = self.headers, delimiter='\t') 
            # writing the data rows 
            print(records)
            csvwriter.writerows(records)

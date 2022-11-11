import csv
from src.persistors.base_persistor import BasePersistor

class CSVPersistor(BasePersistor):

    def __init__(self, **kwargs):
        self.file = kwargs.get('file', 'out.csv')

    def dump_records(self, records):
         with open(self.file, 'a') as output_log_fp: 
            # creating a csv writer object 
            csvwriter = csv.writer(output_log_fp, delimiter='\t') 
            # writing the data rows 
            csvwriter.writerows(records)

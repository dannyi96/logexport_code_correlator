import csv

class CSVPersistor(BasePersistor):

    def __init__(self, * **kwargs):
        self.output_file = kwargs.get('output_file', 'out.csv')

    def dump_records(self, records):
         with open(self.output_file, 'a') as output_log_fp: 
            # creating a csv writer object 
            csvwriter = csv.writer(output_log_fp, delimiter='\t') 
            # writing the data rows 
            csvwriter.writerows(records)

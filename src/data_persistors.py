from abc import abstractmethod, ABC
import csv

class BasePersistor(ABC):

    @abstractmethod
    def __init__(self, file_name, **kwargs):
        pass

    @abstractmethod
    def dump_record(self, record):
        pass

    @abstractmethod
    def dump_records(self, records):
        pass


class CSVPersistor(BasePersistor):

    def __init__(self, file_name, **kwargs):
        self.file_name = file_name
        self.headers = kwargs.get('headers', [])
        self.__create_file()

    def __create_file(self):
         with open(self.file_name, 'w') as output_log_fp: 
            # creating a csv writer object 
            csvwriter = csv.DictWriter(output_log_fp, fieldnames = self.headers, delimiter='\t') 
            # writing headers (field names) 
            csvwriter.writeheader() 

    def dump_record(self, record):
         with open(self.file_name, 'a') as output_log_fp: 
            # creating a csv writer object 
            csvwriter = csv.DictWriter(output_log_fp, fieldnames = self.headers, delimiter='\t') 
            # writing the data rows 
            csvwriter.writerow(record)

    def dump_records(self, records):
         with open(self.file_name, 'a') as output_log_fp: 
            # creating a csv writer object 
            csvwriter = csv.DictWriter(output_log_fp, fieldnames = self.headers, delimiter='\t') 
            # writing the data rows 
            print(records)
            csvwriter.writerows(records)

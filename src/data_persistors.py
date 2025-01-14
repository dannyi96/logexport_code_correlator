from abc import abstractmethod, ABC
import csv
from typing import Any, Dict, List

class BasePersistor(ABC):

    @abstractmethod
    def __init__(self, file_name: str, **kwargs: Dict[str, Any]) -> None:
        pass

    @abstractmethod
    def dump_record(self, record: Dict) -> None:
        pass

    @abstractmethod
    def dump_records(self, records: List[Dict]) -> None:
        pass


class CSVPersistor(BasePersistor):

    def __init__(self, file_name: str, **kwargs: Dict[str, Any]) -> None:
        self.file_name: str = file_name
        self.headers: List = kwargs.get('headers', [])
        self.__create_file()

    def __create_file(self) -> None:
         with open(self.file_name, 'w') as output_log_fp: 
            # creating a csv writer object 
            csvwriter = csv.DictWriter(output_log_fp, fieldnames = self.headers, delimiter='\t') 
            # writing headers (field names) 
            csvwriter.writeheader() 

    def dump_record(self, record: Dict) -> None:
         with open(self.file_name, 'a') as output_log_fp: 
            # creating a csv writer object 
            csvwriter = csv.DictWriter(output_log_fp, fieldnames = self.headers, delimiter='\t') 
            # writing the data rows 
            csvwriter.writerow(record)

    def dump_records(self, records: List[Dict]) -> None:
         with open(self.file_name, 'a') as output_log_fp: 
            # creating a csv writer object 
            csvwriter = csv.DictWriter(output_log_fp, fieldnames = self.headers, delimiter='\t') 
            # writing the data rows 
            print(records)
            csvwriter.writerows(records)

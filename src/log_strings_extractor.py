from abc import abstractmethod, ABC
import re
import os
from data_persistors import CSVPersistor
from typing import Any, Dict

class LogStringsExtractor(ABC):
    @abstractmethod
    def __init__(self, **kwargs: Dict[str, Any]) -> None:
        pass

    @abstractmethod
    def extract_logs(self, codebase_folder: str) -> None:
        pass


class RegexLogLineExtractor(LogStringsExtractor):
    def __init__(self, **kwargs: Dict[str, Any]) -> None:
        self.logline_regex = kwargs.get("logline_regex", r'print\((.*)\)')
        self.logs_file = kwargs.get("logs_file", 'log.csv')
        self.persistor = CSVPersistor(file=self.logs_file, headers=['filename', 'logline'])
    
    def extract_logs(self, codebase_folder: str) -> None:
        print(f"Extracting strings from codebase {codebase_folder}"
              f" having log statements matching regex {self.logline_regex}")
        results = []
        
        for subdir, _, files in os.walk(codebase_folder):
            print('inside')
            for file in files:
                file_path = os.path.join(subdir, file)
                with open(file_path, 'r') as file_p:
                    lines=file_p.read()
                    matches = re.finditer(self.logline_regex, lines)
                    for match in matches:
                        # extract all string literals
                        sub_matches = re.finditer(r'([^"]*)(?P<string>"[^"]*?")', match.group(0))
                        for sub in sub_matches:
                            results.append({
                                'filename': file,
                                'logline': sub.groupdict()['string']
                            })
        self.persistor.dump_records(results)

if __name__ == '__main__':
    extractor = RegexLogLineExtractor()
    extractor.extract_logs('tests/code_files')

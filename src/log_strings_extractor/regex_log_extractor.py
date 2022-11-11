import sys
import re
import os
import csv 
import logging
from src.log_strings_extractor.log_strings_extractor import LogStringsExtractor
from src.data_persistors.csv_persistor import CSVPersistor


class RegexLogLineExtractor(LogStringsExtractor):
    def __init__(self, **kwargs) -> None:
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
                record = {}
                
                
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
        print(results)
        self.persistor.dump_records(results)

if __name__ == '__main__':
    extractor = RegexLogLineExtractor()
    extractor.extract_logs('tests/code_files')
    
    # def to_csv(self, filename: str = "log_stats_template.csv") -> None:
    #     # grep -r -E 'MPSLogger::ins|MPS_DEBUG_LOG|MPS_INFORMATION_LOG|MPS_CRITICAL_LOG|MPS_FATAL_LOG
    #     # |MPS_ERROR_LOG|MPS_WARNING_LOG|MPS_NOTICE_LOG|MPS_TRACE_LOG' * | python extract_stings.py
    #     # re.finditer( r'MPS_DEBUG_LOG((.*?))', text )

    #     fields = ['file', 'log_line', 'query', 'events', 'bytes']
    #     rows = []
    #     elems = sys.stdin.readlines()
    #     for elem in elems:
    #         line_elems = elem.split()
    #         file = line_elems[0].replace(':','')
    #         query_filters = []
    #         for string in re.findall('"([^"]*)"', elem):
    #             if string != '':
    #                 query_filters.append('"%s"'%(string))
    #         if(len(query_filters) > 0):
    #             query = ' AND '.join(query_filters)#.replace(',','<comma>').replace('"','\"')
    #             print(query)
    #             rows.append([file, file, query, -1, -1])

    #     # writing to csv file 
    #     with open(filename, 'w') as csvfile: 
    #         # creating a csv writer object 
    #         csvwriter = csv.writer(csvfile, delimiter='\t') 
    #         # writing the fields 
    #         csvwriter.writerow(fields)
    #         # writing the data rows 
    #         csvwriter.writerows(rows)

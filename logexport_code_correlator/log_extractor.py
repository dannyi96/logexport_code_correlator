import sys
import re
import os
import csv 

class BaseLogLineExtractor:
    def __init__(self):
        pass
    
    def extract_logs(self, codebase_folder: str, delimiters: list) -> None:
        pass
    
class CLogLineExtractor(BaseLogLineExtractor):
    def __init__():
        pass
    
    def extract_logs(self, codebase_folder: str, delimiters: list) -> None:
        
        
    def to_csv(self, filename: str = "log_stats_template.csv") -> None:
        # grep -r -E 'MPSLogger::ins|MPS_DEBUG_LOG|MPS_INFORMATION_LOG|MPS_CRITICAL_LOG|MPS_FATAL_LOG
        # |MPS_ERROR_LOG|MPS_WARNING_LOG|MPS_NOTICE_LOG|MPS_TRACE_LOG' * | python extract_stings.py

        fields = ['file', 'log_line', 'query', 'events', 'bytes']
        rows = []
        elems = sys.stdin.readlines()
        for elem in elems:
            line_elems = elem.split()
            file = line_elems[0].replace(':','')
            query_filters = []
            for string in re.findall('"([^"]*)"', elem):
                if string != '':
                    query_filters.append('"%s"'%(string))
            if(len(query_filters) > 0):
                query = ' AND '.join(query_filters)#.replace(',','<comma>').replace('"','\"')
                print(query)
                rows.append([file, file, query, -1, -1])

        # writing to csv file 
        with open(filename, 'w') as csvfile: 
            # creating a csv writer object 
            csvwriter = csv.writer(csvfile, delimiter='\t') 
            # writing the fields 
            csvwriter.writerow(fields)
            # writing the data rows 
            csvwriter.writerows(rows)

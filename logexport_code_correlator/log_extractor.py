import sys
import re
import os
import csv 

fields = ['file', 'query', 'events', 'bytes']
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
        rows.append([file, query, -1, -1])

filename = "log_stats_template.csv"
    
# writing to csv file 
with open(filename, 'w') as csvfile: 
    # creating a csv writer object 
    csvwriter = csv.writer(csvfile, delimiter='\t') 
    # writing the fields 
    csvwriter.writerow(fields)
    # writing the data rows 
    csvwriter.writerows(rows)

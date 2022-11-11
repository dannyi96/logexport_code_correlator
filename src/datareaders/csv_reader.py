import csv

class CSVReader:
    def __init__(self, filename):
        self.filename = filename
        self.fp = open(self.filename)
        self.csv_reader = csv.DictReader(self.fp)
        
    def read_batch(self, batch_count):
        count = 0
        for row in self.csv_reader:
            yield row
    
    
    
    
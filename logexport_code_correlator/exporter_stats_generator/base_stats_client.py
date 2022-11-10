class BaseStatsClient:

    def __init__(self):
        self.fields = ["file", "log", "events", "bytes", "accuracy"]

    def generate_log_stats(self):
        pass

    def persist_stats_data(self, new_records, output_log_csv='log_stats.csv'):
        with open(output_log_csv, 'a') as output_log_csv_fp: 
            # creating a csv writer object 
            csvwriter = csv.writer(output_log_csv_fp, delimiter='\t') 
            # writing the data rows 
            csvwriter.writerows(new_records)
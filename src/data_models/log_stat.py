class LogStat:
    def __init__(self, filename, logline, tot_events, tot_bytes, accuracy):
        self.filename = filename
        self.logline = logline
        self.tot_events = tot_events
        self.tot_bytes = tot_bytes
        self.accuracy = accuracy
    
    def as_dict(self):
        return {
            'filename': self.filename,
            'logline': self.logline,
            'tot_events': self.tot_events,
            'tot_bytes': self.tot_bytes,
            'accuracy': self.accuracy
        }
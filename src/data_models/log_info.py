class LogInfo:
    def __init__(self, filename, logline):
        self.filename = filename
        self.logline = logline
    
    def as_dict(self):
        return {
            'filename': self.filename,
            'logline': self.logline
        }
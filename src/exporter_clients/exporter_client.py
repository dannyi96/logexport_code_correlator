from abc import abstractmethod, ABC

class ExporterClient(ABC):

    @abstractmethod
    def __init__(self, **kwargs):
        pass

    @abstractmethod
    def get_stats_for_logs(self, log_lines, **kwargs):
        pass

    @abstractmethod
    def get_stats_for_log(self, log_line, **kwargs):
        pass
from abc import abstractmethod, ABC

class QueryGenerator(ABC):

    @abstractmethod
    def __init__(self, **kwargs):
        pass

    @abstractmethod
    def generate_query_for_log(self, log):
        pass

    @abstractmethod
    def generate_query_for_logs(self, logs):
        pass
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


class SplunkQueryGenerator(QueryGenerator):

    def __init__(self, **kwargs):
        pass

    def generate_query_for_log(self, log, **kwargs):
        index = kwargs.get('index', 'main')
        splunk_query = (f"search index={index} \"{log}\" "
                        "| eval bytes=len(_raw) |"
                        "| stats sum(bytes) as bytes'")
        return splunk_query

    def generate_query_for_logs(self, logs, **kwargs):
        index = kwargs.get('index', 'main')
        log_filter = " OR ".join([ f"(\"{log}\")" for log in logs])
        splunk_query = (f"search index={index} {log_filter} "
                        "| eval bytes=len(_raw) "
                        "| stats sum(bytes) as bytes ")
        print(splunk_query)
        return splunk_query
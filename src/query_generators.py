from abc import abstractmethod, ABC
from typing import Any, Dict, List

class QueryGenerator(ABC):

    @abstractmethod
    def __init__(self, **kwargs: Dict[str, Any]) -> None:
        pass

    @abstractmethod
    def generate_query_for_log(self, log: str) -> str:
        pass

    @abstractmethod
    def generate_query_for_logs(self, logs: List[str]) -> str:
        pass


class SplunkQueryGenerator(QueryGenerator):

    def __init__(self, **kwargs: Dict[str, Any]) -> None:
        pass

    def generate_query_for_log(self, log: str, **kwargs: Dict[str, Any]) -> str:
        index = kwargs.get('index', 'main')
        splunk_query = (f"search index={index} \"{log}\" "
                        "| eval bytes=len(_raw) |"
                        "| stats sum(bytes) as bytes'")
        return splunk_query

    def generate_query_for_logs(self, logs: List[str], **kwargs: Dict[str, Any]) -> str:
        index = kwargs.get('index', 'main')
        log_filter = " OR ".join([ f"(\"{log}\")" for log in logs])
        splunk_query = (f"search index={index} {log_filter} "
                        "| eval bytes=len(_raw) "
                        "| stats sum(bytes) as bytes ")
        print(splunk_query)
        return splunk_query
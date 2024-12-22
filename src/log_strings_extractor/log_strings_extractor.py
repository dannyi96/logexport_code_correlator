from abc import abstractmethod, ABC

class LogStringsExtractor(ABC):
    @abstractmethod
    def __init__(self, **kwargs) -> None:
        pass

    @abstractmethod
    def extract_logs(self, codebase_folder: str) -> None:
        pass
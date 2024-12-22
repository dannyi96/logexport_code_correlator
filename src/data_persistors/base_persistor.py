from abc import abstractmethod, ABC
class BasePersistor(ABC):

    @abstractmethod
    def __init__(self, file_name, **kwargs):
        pass

    @abstractmethod
    def dump_record(self, record):
        pass

    @abstractmethod
    def dump_records(self, records):
        pass

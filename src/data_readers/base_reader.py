from abc import abstractmethod, ABC

class BaseReader(ABC):
    @abstractmethod
    def __init__(self, filename):
        pass

    @abstractmethod
    def read(self):
        pass

    @abstractmethod
    def read_batch(self, batch_count):
        pass
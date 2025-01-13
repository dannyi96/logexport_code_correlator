from abc import abstractmethod, ABC
import pandas as pd

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


class CSVReader(BaseReader):
    def __init__(self, filename):
        self.filename = filename
        # TODO: chunking
        print(self.filename)
        self.df = pd.read_csv(self.filename, delimiter='\t')


    def read(self, offset, fields=None):
        # TODO: avoid pandas dependency
        if fields:
            return self.df[fields][offset:].head(1).tolist()
        return self.df[offset:].head(1).tolist()
    

    def read_batch(self, offset, batch_count, fields=None):
        print(self.df)
        print(f'offset={offset} batch_count={batch_count}')
        if fields:
            return self.df[fields][offset:].head(batch_count).tolist()
        return self.df[offset:].head(batch_count).tolist()

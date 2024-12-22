from dataclasses import dataclass
from enum import Enum

class Accuracy(Enum):
    PRECISE = 1
    LOWER_BOUND = 2
    UPPER_BOUND = 3


@dataclass
class LogInfo:
    filename: str
    logline: str


@dataclass
class LogStat:
    filename: str
    logline: str
    tot_events: int
    tot_bytes: int
    accuracy: Accuracy
from typing import Optional, Union
from enum import Enum
from .info_utils import readable


class QtyNotSetError(Exception):
    def __init__(self):
        super().__init__()


class QtyUnitMismatchError(Exception):
    def __init__(self):
        super().__init__()


class Unit(Enum):
    Seconds = "sec"
    Hertz = "Hz"
    Bytes = "B"
    BytesPerSecond = "B/s"
    Percent = "%"

    # not a unit in the SI sense, but indicates that the value if a count of some event
    # these will be used in running text, with the value using the words million/billion
    # etc., instead of SI prefixes
    Event = "event"
    EventRate = "event_rate"
    Count = "count"


class PrefixScale(Enum):
    Giga = "G"
    Mega = "M"
    Kilo = "k"
    Unit = ""


def make_readable(precision: Optional[int] = None):
    if precision is None:
        return readable
    else:
        return lambda x: f"{x:.{precision}f}"


def format_decimal_prefix(value: float,
                          unit: str,
                          *,
                          scale: Optional[PrefixScale] = None,
                          precision: Optional[int] = None) -> str:
    if scale is None:
        if value > 10_000_000_000:
            scale = PrefixScale.Giga
        elif value > 10_000_000:
            scale = PrefixScale.Mega
        elif value > 10_000:
            scale = PrefixScale.Kilo
        else:
            scale = PrefixScale.Unit

    _r = make_readable(precision=precision)

    if scale == PrefixScale.Giga:
        return f"{_r(value / 1_000_000_000)} G{unit}"
    elif scale == PrefixScale.Mega:
        return f"{_r(value / 1_000_000)} M{unit}"
    elif scale == PrefixScale.Kilo:
        return f"{_r(value / 1_000)} k{unit}"
    return f"{_r(value)} {unit}"


_GIBI = 1024 * 1024 * 1024
_MIBI = 1024 * 1024
_KIBI = 1024


def format_binary_prefix(value: float,
                         unit: str,
                         *,
                         scale: Optional[PrefixScale] = None,
                         precision: Optional[int] = None) -> str:
    if scale is None:
        if value > 10 * _GIBI:
            scale = PrefixScale.Giga
        elif value > 10 * _MIBI:
            scale = PrefixScale.Mega
        elif value > 10 * _KIBI:
            scale = PrefixScale.Kilo
        else:
            scale = PrefixScale.Unit

    _r = make_readable(precision=precision)

    if scale == PrefixScale.Giga:
        return f"{_r(value / _GIBI)} Gi{unit}"
    elif scale == PrefixScale.Mega:
        return f"{_r(value / _MIBI)} Mi{unit}"
    elif scale == PrefixScale.Kilo:
        return f"{_r(value / _KIBI)} Ki{unit}"
    return f"{_r(value)} {unit}"


def format_verbal_prefix(value: float,
                         *,
                         scale: Optional[PrefixScale] = None,
                         precision: Optional[int] = None) -> str:
    if scale is None:
        if value > 1_000_000_000:
            scale = PrefixScale.Giga
        elif value > 1_000_000:
            scale = PrefixScale.Mega
        elif value > 100_000:
            scale = PrefixScale.Kilo
        else:
            scale = PrefixScale.Unit

    _r = make_readable(precision=precision)

    if scale == PrefixScale.Giga:
        return f"{_r(value / 1_000_000_000)} billion"
    elif scale == PrefixScale.Mega:
        return f"{_r(value / 1_000_000)} million"
    elif scale == PrefixScale.Kilo:
        return f"{_r(value / 1_000)} thousand"
    return _r(value)


class Quantity:
    def __init__(self, value, unit: Unit, *, stddev=None, count: int = 1):
        assert unit in Unit
        self.value = value
        self.unit = unit
        self.count = count
        self.stddev = stddev

    def _cmp_check(self, other: Union[float, "Quantity"]) -> float:
        if self.value is None:
            raise QtyNotSetError()
        if isinstance(other, Quantity):
            if other.unit != self.unit:
                raise QtyUnitMismatchError()
            if other.value is None:
                raise QtyNotSetError()
            return other.value
        return other

    def __le__(self, other: Union[float, "Quantity"]):
        other = self._cmp_check(other)
        return self.value <= other

    def __lt__(self, other: Union[float, "Quantity"]):
        other = self._cmp_check(other)
        return self.value < other

    def __gt__(self, other: Union[float, "Quantity"]):
        other = self._cmp_check(other)
        return self.value > other

    def __ge__(self, other: Union[float, "Quantity"]):
        other = self._cmp_check(other)
        return self.value >= other

    def __bool__(self):
        return self.value is not None

    def format(self,
               scale: Optional[PrefixScale] = None,
               precision: int = None):
        if self.value is None:
            raise QtyNotSetError()

        if self.unit == Unit.Percent:
            return f"{readable(self.value)}%"
        elif self.unit in [Unit.Event, Unit.EventRate, Unit.Count]:
            return format_verbal_prefix(self.value,
                                        scale=scale,
                                        precision=precision)
        elif self.unit in [Unit.Bytes, Unit.BytesPerSecond]:
            return format_binary_prefix(self.value,
                                        self.unit.value,
                                        scale=scale,
                                        precision=precision)
        elif self.unit == Unit.Hertz:
            return format_decimal_prefix(self.value,
                                         self.unit.value,
                                         scale=PrefixScale.Giga,
                                         precision=precision)
        else:
            return format_decimal_prefix(self.value,
                                         self.unit.value,
                                         scale=scale,
                                         precision=precision)

    def __str__(self):
        return self.format()

    def __format__(self, format_spec: str):
        format_spec = format_spec.strip()
        if format_spec.startswith(".") and format_spec.endswith('f'):
            precision = int(format_spec[1:-1])
        else:
            precision = None
        return self.format(precision=precision)

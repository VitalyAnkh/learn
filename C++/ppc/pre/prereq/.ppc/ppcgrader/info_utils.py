import math


def readable(x):
    """
    Converts a number to string in non-scientific format in a way that ensures that small numbers are never rounded to
    zero, and large numbers are rounded to the nearest integer.
    """
    if abs(x) >= 100:
        return f'{x:.0f}'
    if abs(x) >= 10:
        return f'{x:.1f}'
    i = 0
    while x != 0 and float(f'{x:.{i}f}') == 0:
        i += 1
    i += 2
    return f'{x:.{i}f}'


def isnum(v):
    """
    Returns if `v` is of numeric type, i.e. an integer or a floating point number
    """
    return v is not None and (isinstance(v, int) or
                              (isinstance(v, float) and math.isfinite(v)))


def _multi_get(collection, indices):
    """
    Given a collection, and a sequence of indices `indices = (i1, ..., in)`, returns the subscript
    `collection[i1][...][in]`
    """
    for i in indices:
        collection = collection[i]
    return collection


def safeget(m, *indices):
    """
    Given a sequence of indices `i1, ..., ìn`, performs the lookup m[i1][...][in]. If this lookup is not
    possible, returns `None`
    """
    try:
        return _multi_get(m, indices)
    except (KeyError, IndexError, TypeError):
        return None


def safenum(v, default=0):
    """
    For numeric values, this is an identity operation. Any other value is replaced by default.
    """
    return v if isnum(v) else default


def safestr(v, default='–'):
    """
    Returns the default value of `v is None`, otherwise converts `v` to string.
    """
    return default if v is None else str(v)


def safeprint(v, fmt_float='{:+.8f}'):
    """
    If the given value is a floating point, it is returned using the corresponding format string.
    Otherwise, a string representation of the value is returned, with `None` replace by the string "-".
    """
    if isinstance(v, float):
        return fmt_float.format(v)
    elif isinstance(v, int):
        return '{:d}'.format(v)
    return safestr(v, default='–')


def saferatio(x, y, f):
    """
    Tests if the ratio `x / y` is smaller than `f`. If `x` or `y` is not a number, then the test always returns False.
    """
    if isnum(x) and isnum(y):
        # write as product to avoid division by zero.
        return x < f * y
    else:
        return False


def safereadable(v):
    """
    Converts the number into `readable` format, ensuring that `None` results in `-` and non-numeric
    inputs are converted to string, instead of causing an error.
    """
    if v is None:
        return '–'
    elif isnum(v):
        return readable(v)
    else:
        return str(v)


def render_explain_web(template: str, raw: dict, **kwargs):
    from jinja2 import Template
    from markupsafe import Markup

    return Markup(
        Template(template).render(
            input=raw.get("input", {}),
            output=raw.get("output", {}),
            oe=raw.get("output_errors", {}),
            **kwargs,
            safeget=safeget,
            safenum=safenum,
            safestr=safestr,
            saferatio=saferatio,
            safeprint=safeprint,
            safereadable=safereadable,
        ))

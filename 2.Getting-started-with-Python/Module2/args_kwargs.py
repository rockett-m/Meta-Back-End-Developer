#!/usr/bin/env python3

def sum_nums_args(*args) -> float:
    """
    flexible num of input args can be handled
    """
    total = 0.0
    for item in args:
        if not (isinstance(item, (int, float))):
            print(f"Invalid type: {item = }")
            break
        total += item
    return round(total, 2)

print(f"{sum_nums_args.__name__} :: {sum_nums_args(3, 4, 5)}")


def sum_nums_kwargs(**kwargs) -> float:
    """
    flexible num of input key[words], value args can be handled
    """
    total = 0.0
    for key, value in kwargs.items():
        if not (isinstance(value, (int, float))):
            print(f"Invalid type: {key = } : {value = }")
            break
        total += value
    return round(total, 2)

print(f"{sum_nums_kwargs.__name__} :: {sum_nums_kwargs(lollipop=1.99, coffee=4.59, cheesecake=8.99)}")

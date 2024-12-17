# python3 -m pytest test-arithmetic.py
# python3 -m pytest test-arithmetic.py::test_add

import arithmetic
import pytest

def test_add():
    assert arithmetic.add(4, 5) == 9

def test_sub():
    assert arithmetic.sub(4, 5) == -1

def test_sub_wrong():
    # intentionally messed up
    assert arithmetic.sub(4, 5) == -11
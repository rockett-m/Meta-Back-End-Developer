# python3 -m pytest test_findstring.py

from curses.ascii import isdigit
import findstring
import pytest

def test_ispresent():
    assert findstring.ispresent("Alice")

def test_nodigit():
    assert findstring.nodigit("N8")
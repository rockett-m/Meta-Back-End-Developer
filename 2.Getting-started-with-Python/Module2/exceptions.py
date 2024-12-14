#!/usr/bin/env python3
def divide(a, b) -> float:
    try:
        return a / b
    except ZeroDivisionError as e: # most precise
        print("We cannot divide by zero")
    except Exception as e:
        print("Error: ", e.__class__)

divide(a=5, b=0)
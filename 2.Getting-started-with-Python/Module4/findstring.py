# python3 -m pytest test_findstring.py

def ispresent(person):
    names = ["Alice", "Bob", "Charles", "Diane"]
    if person in names:
        return True
    return False

def nodigit(person):
    """
    fails if a digit character is found by isalpha()
    """
    if person.isalpha():
        return True
    return False
import re
import itertools

fruits = ['apple', 'orange', 'banana', 'raspberry', 'strawberry', 'papaya']


def letter_found(word: str, letter: str = 'b') -> str | None:
    if re.search(letter, word):
        return word
    return None

# filter creates new list with only the true values
# won't contain None
filtered = filter(letter_found, fruits)
print(f'\n{filtered = }')
print(f'{list(filtered) = }\n')

# map applies to all items in the list
# can contain None
# mapped = map(letter_found, fruits, itertools.repeat('b'))
mapped = map(letter_found, fruits)
print(f'{mapped = }')
print(f'{list(mapped) = }\n') # "consumes" the iterator using list
# [ print(f"{item = }") for item in list(mapped) ]

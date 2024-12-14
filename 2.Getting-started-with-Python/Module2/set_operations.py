#!/usr/bin/env python3

my_set = {1, 2, 3, 4, 5, 5} # no dups
my_s = set([4, 5, 5, 6, 6])

print(f'{my_set = }')
print(f'{my_s = }')

# union is all elements of both sets without dups
union_sets = my_set.union(my_s)
union_sets = my_set | my_s

# intersection is values common to both sets
intersection_sets = my_set.intersection(my_s)
intersection_sets = my_set & my_s

print(f"{union_sets = }")
print(f"{intersection_sets = }")

# set difference (unique elems to 1 of the sets)
set_diff = my_set.difference(my_s)
set_diff = my_set - my_s
# set_diff = my_s - my_set # for other way

# unique elements from both sets
symmetric_diff = my_set.symmetric_difference(my_s)
symmetric_diff = my_set ^ my_s

print(f"{set_diff = }")
print(f"{symmetric_diff = }")

# sets are unordered by default
# from collections import OrderedSet if needed
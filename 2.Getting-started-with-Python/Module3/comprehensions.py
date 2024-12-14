# lists
data = [2,3,5,7,11,13,17,19,23,29,31]

data = [ x+4 for x in data ] # change orig list
xrange = [ x for x in range(10) ] # newlist, 0 to 9
xmrange = [ x-1 for x in range(10) ] # newlist, -1 to 8
evens = [ x for x in data if x % 2 == 0 ]
mult3 = [ x*3 for x in data ]


for var_name in ['data', 'xrange', 'xmrange', 'evens', 'mult3']:
    print(f'{var_name} = {globals()[var_name]}')

# dictionaries
months = ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"]
numbers = [x for x in range(1, 12+1)]


monthsdict = {k:v for k,v in zip(months, numbers)}

rangedict = {chr(x+64):x+2 for x in range(1, 12)}

print(f'\n{monthsdict = }')
print(f'{rangedict = }')

# sets
setcomp = {x for x in range(4, 12) if x not in [5, 8, 11]}
print(f'\n{setcomp = }')

# generators
# more memory efficient than list comprehensions
data = [2,3,5,7,11,13,17,19,23,29,31]
generated = (x for x in data)
print(f'\n{generated = } {type(generated) = }')
for gen in generated:
    print(gen, end=" ")
print()


# map vs list comp
data = [2,3,5,7,11,13,17,19,23,29,31]
def square(num: int):
    return num ** 2

mappedsq = map(square, data)
listcomp = [ x**2 for x in data ]

print(f'\n{list(mappedsq) = }')
print(f'{listcomp = }\n')



# testing knowledge
c = [ 1, 2, 3, 4 ]
cstr = ''.join(map(str, c))
print(f'{c = }')
print(f'{cstr = }')

a = [[96], [69]]
amap = list(map(str, a)) # ['[96]', '[69]']
print(f'{amap = }')
# note the join removes the commas and squashes the elems of the list together
ajoinmap = ''.join(list(map(str, a))) # '[96][69]'
print(f'{ajoinmap = }')


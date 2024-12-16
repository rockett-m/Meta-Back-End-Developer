# class definition of A
class A:
    # constructor for A
    def __init__(self, c):
        print("---------Inside class A----------")
        self.c = c
    print("Print inside A.")

    # definition of local method alpha()
    def alpha(self):
        c = self.c + 1
        return c

print(f'{dir(A) = }')
print("Instantiating A..")
a = A(1)
print(f'{a.alpha() = }')

# class definition of B
class B:
    # constructor for B
    def __init__(self, a):
        print("---------Inside class B----------")
        self.a = a

    print(f'{a.alpha() = }')
    d = 5
    print(f'{d = }')
    print(f'{a = }')

print("Instantiating B..")
b = B(a)
print(f'{a = }')

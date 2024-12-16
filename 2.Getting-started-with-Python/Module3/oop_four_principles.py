#################################################################
# Encapsulation
# provide varied access to members
class MyStock:
    def __init__(self):
        self._low = 3.   # Protected member 'low'
        self.__high = 4. # Private member 'high'

        # protected members can be accessed by the class and its subclasses
        # private members can only be accessed from within the class

Stock = MyStock()
print(f'{Stock._low = }')   # prints out
# print(f'{Stock.__high = }') # does not print out

# name mangling let's us not modify the original MyStock attr
# but instead modify _Stock.__high
# _class__identifier
Stock._low = 5.
Stock.__high = 6.
print(f'{Stock._low = }')   # prints out
print(f'{Stock.__high = }') # prints out

#################################################################
# Polymorphism
# using operators in multiple ways
# for example the '*' operator can be used to multiply, duplicate and concat
num = 5
string = 'polymorphism'
my_list = [0, 1, 2, 3]

print(f'\n{num * 3 = }')
print(f'{string * 3 = }')
print(f'{my_list * 3 = }\n')

#################################################################
# Inheritance
# method resolution order (MRO)

class MyTree:
    """
    members of the parent class
    """
    tree_nodes = []
    num_nodes = 0
    last_id = -1

    def __init__(self):
        ...

    def add_node(self, Node):
        self.last_id = Node.id
        self.num_nodes += 1
        self.tree_nodes.append(Node)

    def print_tree(self):
        print(f'Nodes:\n{self.tree_nodes = }')

class MyNode(MyTree):
    """
    Inherited members from parent class
    Additional members of the child class
    """
    id = None
    import random
    favorite_num = random.choice([x for x in range(100)])

    def update_id(self):

        self.id = Tree.last_id + 1
        Tree.last_id += 1

    def print_node(self):
        print(f'node {self.id = }')
        print(f'node {self.favorite_num = }')


Tree = MyTree()
Node = MyNode()
Node.update_id()
Node.print_node()
Tree.add_node(Node)
Tree.print_tree()



#################################################################
# Abstraction
# hide info in blocks of code
# abc = abstract base class

from abc import ABC
class ClassName(ABC):
    pass

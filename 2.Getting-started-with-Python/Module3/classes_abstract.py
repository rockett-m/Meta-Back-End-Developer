from abc import ABC, abstractmethod

class Employee(ABC):

    @abstractmethod
    def donate(self):
        pass

class Donation(Employee):
    def donate(self):
        a = input("How much would you like to donate? ")
        return a

amounts = []
john = Donation()
j = john.donate()
amounts.append(j)

peter = Donation()
p = peter.donate()
amounts.append(p)

print(f'{amounts = }')






# give parent class ABC
# @abstractmethod decorator over functions that inheriting children
# + will need to define and override for instantiation to work
# + all parent abstract methods will have to be defined by children
# + that inherit the parent class
from abc import ABC, abstractmethod

class Country(ABC):
    """
    children must define the methods here that
    have the @abstractmethod decorator
    """
    @abstractmethod
    def reveal_currency(self):
        pass

    @abstractmethod
    def get_population_size(self):
        pass

class France(Country):

    def reveal_currency(self):
        print(f"The French currency is the euro.")
        return

    def get_population_size(self):
        print(f"The French population is approx 68 million people in 2023.")

class England(Country):

    def reveal_currency(self):
        print(f"The English currency is the pound.")
        return

    def get_population_size(self):
        print(f"The English population is approx 57 million people in 2022.")


france = France()
england = England()

france.reveal_currency()
england.reveal_currency()

france.get_population_size()
england.get_population_size()
class Employees:
    def __init__(self, name, last) -> None:
        self.name = name
        self.last = last

class Supervisors(Employees):
    def __init__(self, name, last, password) -> None:
        """
        super() does this work - gives access to methods, vars of
        parent or sibling classes
        self.name = name
        self.last = last
        """
        super().__init__(name, last)
        self.password = password

class Chefs(Employees):
    """
    this extends the  Employees class further
    """
    def leave_request(self, days):
        return f"May I take a leave for {days} days?"




adrian = Supervisors("Adrian", "A", "apple")
emily = Chefs("Emily", "E")
juno = Chefs("Juno", "J")

print(f'{emily.leave_request(3) = }')
print(f'{adrian.password = }')
print(f'{emily.name = }')


# aka is "Chefs" a subclass of "Employees" ?
print(f'{issubclass(Chefs, Employees) = }')
print(f'{issubclass(Chefs, Supervisors) = }')
print(f'{isinstance(juno, Chefs) = }')
print(f'{isinstance(juno, Employees) = }')
print(f'{isinstance(juno, Supervisors) = }')
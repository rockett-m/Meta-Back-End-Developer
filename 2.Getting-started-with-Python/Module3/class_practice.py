class Recipe():
    def __init__(self, dish, items, time) -> None:
        self.dish = dish
        self.items = items
        self.time = time

    # example method
    # def __new__(cls: type[Self]) -> Self:
    #    pass

    def contents(self):
        print(f"""The {self.dish} has ingredients of {', '.join(self.items)} and takes {self.time} min to prepare""")


pizza = Recipe("Pizza", ["cheese", "bread", "tomato"], 45)
# print(f'{pizza.items = }')
pizza.contents()

pasta = Recipe("Pasta", ["penne", "sauce"], 55)
# print(f'{pasta.items = }')
pasta.contents()

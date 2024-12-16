class MyHouse():
    length = 10
    width = 20

    def calc_area(self):
        area = self.length * self.width
        print(f'{area = }')
        return area

    def print_dims(self):
        print(f'{self.length = }')
        print(f'{self.width = }')

House = MyHouse()

House.print_dims()
House.calc_area()

House.length = 25
House.print_dims()
House.calc_area()

House.print_dims()
House.calc_area()
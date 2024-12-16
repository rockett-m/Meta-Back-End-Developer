class MyFirstClass:
    index: str = "Author-Book"
    print("Who wrote this?")

    def hand_list(self, philosopher, book):
        print(MyFirstClass.index)
        print(f"{philosopher} wrote the book: {book}")

# MyFC = MyFirstClass()
# MyFC.index = "Author-Book"
# print(MyFirstClass, MyFC)
# MyFC.hand_list('Plato', 'Republic')

whodunnit = MyFirstClass()
whodunnit.hand_list("Sun Tzu", "The Art of War")
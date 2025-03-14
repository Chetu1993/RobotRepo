from functools import total_ordering

class firstclass:

    def __init__(self,name,city,salary):
        self.name=name
        self.city=city
        self.salary=0

    @total_ordering
    def __ge__(self,other):
        return self.salary>=self.other

a=firstclass(45)
b=firstclass(67)
print(a>=b)













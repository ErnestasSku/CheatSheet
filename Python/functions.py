# A small collection of functions


def greeting(*args):
    """This function can have many different arguments"""
    for name in args:
        print("Hello, ", name)

greeting("John", "Bob");

# """content""" are known as doc strings and can be printed as a documentation for the function 
print(greeting.__doc__)

#function with *args and **kwargs
def FunctionArgK(*args, **kwargs):
    for arg in args:
        print('arg: ', arg)
    for key in kwargs.keys():
        print('key: ', key, 'has a value: ', kwargs[key])

FunctionArgK(1, 2, 3, 4, a="10", b="11", c="12", d="a", e="b")


double = lambda i: i * i
half = lambda i: i / 2

def curriedFunction(f):
    print(f(10))

curriedFunction(double)
curriedFunction(half)
curriedFunction(lambda i : (i * (i + 1)) / 2 )

print(type(double))
print(type(curriedFunction))
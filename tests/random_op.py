import random

actions = ['add', 'minus', 'multiply', 'divide']

def Random_Choice(arg):
    a = random.randint(0, 9)
    b = random.randint(0, 9)
    c = random.choice(actions)
    return a, b, c

def Random_Operation(a, b, c):
    if c == 'add':
        sum = a + b
        print a, b, c, sum
    elif c == 'minus':
        sum = a - b
        print a, b, c, sum
    elif c == 'multiply':
        sum = a * b
        print a, b, c, sum
    else:
        c = a / b
        print a, b, c, sum
    return sum

print Random_Operation(*Random_Choice(actions))

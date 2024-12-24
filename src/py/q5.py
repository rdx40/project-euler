import math

def lcm(a, b):
    return abs(a * b)// math.gcd(a, b)

def lcmrange(n):
    res = 1
    for i in range(1, n + 1):
        res = lcm(res, i)
    return res

print(lcmrange(20))


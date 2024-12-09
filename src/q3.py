import math

def find_largest_prime_factor():
    ques = 600851475143
    while True:
        smallest_factor = smallest_pf(ques)
        if smallest_factor < ques:
            ques //= smallest_factor
        else:
            return str(ques)


def smallest_pf(n):
    if n < 2:
        return None
    for divisor in range(2, math.isqrt(n) + 1):
        if n % divisor == 0:
            return divisor
    return n  

print(find_largest_prime_factor())

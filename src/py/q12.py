import math

def count_divisors(n):
    divisors = 1
    count = 0
    while n % 2 == 0:
        n //= 2
        count += 1
    divisors *= (count + 1)

    for i in range(3, int(math.sqrt(n)) + 1, 2):
        count = 0
        while n % i == 0:
            n //= i
            count += 1
        divisors *= (count + 1)

    if n > 2:
        divisors *= 2

    return divisors

def first_triangle_with_divisors(min_divisors):
    n = 1
    while True:
        triangle_number = n * (n + 1) // 2
        
        if n % 2 == 0:
            divisors = count_divisors(n // 2) * count_divisors(n + 1)
        else:
            divisors = count_divisors(n) * count_divisors((n + 1) // 2)
        
        if divisors > min_divisors:
            return triangle_number
        
        n += 1

print(first_triangle_with_divisors(500))


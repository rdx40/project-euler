def isPrime(n):
    if n <= 1:
        return False
    if n == 2:
        return True
    if n % 2 == 0:
        return False
    for i in range(3, int(n**0.5) + 1, 2):
        if n % i == 0:
            return False
    return True

def find_nth_prime(n):
    cnt = 0
    num = 1 
    while cnt < n:
        num += 1
        if isPrime(num):
            cnt += 1
    return num

print(find_nth_prime(10001))


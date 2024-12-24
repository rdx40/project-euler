def ispali(num):
    return str(num) == str(num)[::-1]

def largest_paliprod():
    lar = 0
    
    # Loop through all 3-digit numbers in descending order
    for i in range(999, 99, -1):
        for j in range(i, 99, -1):  # We can start from i to avoid redundant calculations
            product = i * j
            if ispali(product) and product > lar:
                lar = product
    
    return lar
print(largest_paliprod())

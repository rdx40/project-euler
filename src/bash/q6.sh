#!/bin/bash
n=100
sum_squares=$(( (n * (n + 1) * (2 * n + 1)) / 6 ))
sum_numbers=$(( (n * (n + 1)) / 2 ))
square_sum=$(( sum_numbers * sum_numbers ))
difference=$(( square_sum - sum_squares ))

echo $difference

#!/bin/bash

smallest_prime_factor() {
    n=$1
    for (( i=2; i*i<=n; i++ )); do
        if (( n % i == 0 )); then
            echo $i
            return
        fi
    done
    echo $n
}

largest_prime_factor() {
    ques=600851475143
    while true; do
        smallest_factor=$(smallest_prime_factor $ques)
        if (( smallest_factor < ques )); then
            ques=$((ques / smallest_factor))
        else
            echo $ques
            return
        fi
    done
}

largest_prime_factor


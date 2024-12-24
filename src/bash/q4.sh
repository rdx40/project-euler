#!/bin/bash

is_palindrome() {
    num=$1
    rev=$(echo "$num" | rev)
    if [ "$num" -eq "$rev" ]; then
        return 0  
    else
        return 1  
    fi
}

largest_palindrome_product() {
    max_palindrome=0
    for i in $(seq 999 -1 100); do
        for j in $(seq $i -1 100); do
            product=$((i * j))
            if is_palindrome $product; then
                if [ $product -gt $max_palindrome ]; then
                    max_palindrome=$product
                fi
            fi
        done
    done
    echo $max_palindrome
}

largest_palindrome_product

#!/bin/bash

gcd() {
    a=$1
    b=$2
    while [ $b -ne 0 ]; do
        temp=$b
        b=$((a % b))
        a=$temp
    done
    echo $a
}

lcm() {
    a=$1
    b=$2
    gcd_result=$(gcd $a $b)
    echo $(( (a * b) / gcd_result ))
}

lcm_range() {
    n=$1
    res=1
    for ((i=1; i<=n; i++)); do
        res=$(lcm $res $i)
    done
    echo $res
}

lcm_range 20

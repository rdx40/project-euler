#!/bin/bash
max=4000000
sum=0
x=1
y=2

while [ $y -le $max ]
do
  if [ $((y % 2)) -eq 0 ]; then
    sum=$((sum + y))
  fi
  temp=$y
  y=$((x + y))
  x=$temp
done

echo $sum


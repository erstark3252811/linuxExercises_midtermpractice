#!/bin/bash

pattern="^[01]+$"

sum=0

for n in {1000..2000}; do
    if [[ $n =~ $pattern ]]; then
	sum=$((sum + n))
    fi
done
echo $sum




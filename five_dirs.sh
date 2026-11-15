#!/bin/bash

mkdir -p five

mkdir -p five/dir{1..5}

for d in {1..5}; do
    for f in {1..4}; do
	for z in $(seq $f); do
	    echo $f >> five/dir$d/file$f
	done
    done
done



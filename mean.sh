#!/bin/bash

file=${2:-/dev/stdin}

if [[ $# -lt 1 || $# -gt 2 ]]; then echo "usage: $0 <column> [file.csv]" 1>&2; exit 1; fi

cat "$file" | tail -n +2 | cut -d "," -f $1 | { n=0; sum=0 avg=0; while read x; do n=$((n+1)); sum=$(echo "$sum + $x" | bc); avg=$(echo "scale =2; $sum / $n" | bc); done; echo $avg; }

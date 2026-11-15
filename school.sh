#!/bin/bash

cat Property_Tax_Roll.csv | head -n 50 | grep "MADISON SCHOOLS" | cut -d "," -f 7 | { n=0; sum=0 avg=0; while read x; do n=$((n+1)); sum=$((sum+x)); avg=$((sum / n)) ; done; echo $avg; }

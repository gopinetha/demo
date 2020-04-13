#!/usr/bin/bash

echo "Arthemetic operations and storing in dictionary"
set -x

read -p "Enter the first input : " a
read -p "Enter the second Input : " b
read -p "Enter the third input : " c
d=$(( ($a+$b)*$c ))
Dict["0"]="${d}"
e=$(( $a*($b+$c) ))
Dict["1"]="${e}"
f=$(( ($a/$b)+$c ))
Dict["2"]="${f}"
g=$(( ($a%$b)+$c ))
Dict["3"]="${g}"
echo "result " ${Dict[@]}
echo "All keys" ${!Dict[@]}
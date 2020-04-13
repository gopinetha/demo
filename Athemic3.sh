#!/usr/bin/bash

echo "Arthemetic operations Adding & division"
set -x

read -p "Enter the first input : " a
read -p "Enter the second Input : " b
read -p "Enter the third input : " c

x=$(( $c+($a/$b) ))
echo $x

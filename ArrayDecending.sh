#!/usr/bin/bash

echo "Arthemetic operations and storing in dictionary"

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

for ((i=0; i<4; i++))
do
arr[$i]=${Dict[$i]};
done
echo "result " ${arr[@]}
for(( i=0; i<4; i++ ))
do
  for(( j=0; j<4 ; j++ ))
   do
    if(( ${arr[$i]} > ${arr[$j]} ))
     then
      temp=${arr[$i]}
      arr[$i]=${arr[$j]}
      arr[$j]=$temp
    fi

   done

done
echo "Array in  sorted decending order :"
echo ${arr[*]} 
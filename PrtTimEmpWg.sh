#!/usr/bin/bash

echo "Adding part tim Employee & Wage "

isPartTime=1;
isFullTime=2;
EmpRatePerHr=20;
RandomCheck=$((RANDOM % 3))
set -x
if [ $isFullTime -eq $RandomCheck ];
then
	empHrs=8;
elif [ $isPartTime -eq $RandomCheck ];
then
	empHrs=4;
else
	empHrs=0;
fi

salary=$(($empHrs*$EmpRatePerHr));
echo $salary


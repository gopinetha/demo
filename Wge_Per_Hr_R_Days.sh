#!/usr/bin/bash

echo " calculate Wages till total working hours or days reached for a month"

isPartTime=1;
isFullTime=2;
totalSalary=0;
#totalHrs=100;
TotalDays=20;
WrkingHrs=0;
WrkingDays=0;
TotalSalary=0;
EmpRatePerHr=20;
set -x

while [[ $WrkingHrs -lt 100 && $WrkingDays -lt 20 ]]
do
	CheckRndm=$((RANDOM % 3 ))
	case $CheckRndm in
		$isPartTime)
			EmpHrs=4
			;;
		$isFullTime)
			EmpHrs=8
			;;
		*)
			EmpHrs=0
			;;
	esac
	
	WrkingHrs=$(( $WrkingHrs + $EmpHrs ))
		((WrkingDays++))
	Salary=$(( $EmpHrs*$EmpRatePerHr ));
	TotalSalary=$(($TotalSalary + $Salary ));
	
done
echo "$TotalSalary"
		
	

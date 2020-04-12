#!/usr/bin/bash

echo " BY using function calculate Wages till total working hours or days reached for a month"

isPartTime=1;
isFullTime=2;
totalSalary=0;
totalHrs=100;
TotalDays=20;
WrkingHrs=0;
WrkingDays=0;
TotalSalary=0;
EmpRatePerHr=20;
set -x
function getWrkingHrs()
{
	case $1 in
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
			echo "$EmpHrs"

}

while [[ $WrkingHrs -lt $totalHrs && $WrkingDays -lt $TotalDays ]]
do
	EmpHr=$(getWrkingHrs $((RANDOM %3)) )
	WrkingHrs=$(( $WrkingHrs + $EmpHr ))
		((WrkingDays++))
	Salary=$(( $EmpHr*$EmpRatePerHr ));
	TotalSalary=$(($TotalSalary + $Salary ));
	
done
echo "$TotalSalary"
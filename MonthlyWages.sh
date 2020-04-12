#!/usr/bin/bash

echo "The Employe Wages for monthly"

isPartTime=1;
isFullTime=2;
TotalSalary=0;
EmpRatePerHr=20;
NumWorkingDays=20;
set -x
#for (( day=1; day<=$NumWorkingDays; day++ ))
day=0
while [ $day != 20 ]
do
	CheckEmp=$(( RANDOM % 3 ));
		
		case $CheckEmp in
			$isFullTime)
				EmpHrs=8
				;;
			$isPartTime)
				EmpHrs=4
				;;
			*)
				EmpHrs=0
				;;
		esac
	

		Salary=$(( $EmpHrs*$EmpRatePerHr ));
		TotalSalary=$(($TotalSalary + $Salary ));
		((day++))
done

echo "The salary that employe will get $TotalSalary"

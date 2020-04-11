#!/usr/bin/bash

echo " The Employe wages using Switch case"

isPartTime=1;
isFullTime=2;
EmpRatePerHr=20;
set -x
CheckEmp=$(( RANDOM % 3 ));

case $CheckEmp in
	$isFullTime)
		EmpHrs=8;
		;;
	$isPartTime)
		EmpHrs=4;
		;;
	*)
		EmpHrs=0
		;;
esac

salary=$(( $EmpRatePerHr * $EmpHrs ));

echo "$salary"

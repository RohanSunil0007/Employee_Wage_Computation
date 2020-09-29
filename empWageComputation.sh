#!/bin/bash -x
echo "Welcome to Employee Wage Computation program"
isPresent=1
empCheck=$((1+RANDOM%2))
attendance=0
if [ $isPresent -eq $empCheck ]
then
	attendance=1
   echo "Employee is Present"
else
	attendance=0
   echo "Employee is Absent"
fi
empRatePerHour=20
fullDayHour=8
dailyEmpWage=$(( $empRatePerHour * $fullDayHour * $attendance ))
echo "Daily Employee Wage : $dailyEmpWage"

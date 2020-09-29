#!/bin/bash -x
echo "Welcome to Employee Wage Computation program"
empRatePerHour=20

isPartTime=1
isFullTime=2

numWorkDays=20

MAX_WORKHRS_MONTH=100

totalEmpHrs=0
totalEmpWorkDays=0
while [[ $totalEmpHrs -lt $MAX_WORKHRS_MONTH && $totalEmpWorkDays -lt $numWorkDays ]]
do
((totalEmpWorkDays++))
empCheck=$((RANDOM%3))
		case $empCheck in
				$isPartTime)    echo "Employee is Present"
						workHrs=4
					;;
				$isFullTime)	echo "Employee is Present"
						workHrs=8
					;;
					*)
						workHrs=0
						echo "Employee is Absent !"
					;;
		esac
	totalEmpHrs=$(($totalEmpHrs+$workHrs))
done
 salary=$(( $empRatePerHour * $totalEmpHrs ))

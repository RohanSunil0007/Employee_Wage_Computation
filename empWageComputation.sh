#!/bin/bash -x
echo "Welcome to Employee Wage Computation program"
empCheck=$((RANDOM%3))
empRatePerHour=20

isPartTime=1
isFullTime=2

fullDayHour=8
partDayHour=4
numWorkDays=20

day=1
while [ $day -le $numWorkDays ]
do
		case $empCheck in
				$isPartTime)    echo "Employee is Present"
						workHrs=4
						echo "Part Time Salary is :"
					;;
				$isFullTime)	echo "Employee is Present"
						workHrs=8
						echo "Full Time Salary is :"
					;;
					*)
						workHrs=0
						echo "Employee is Absent !"
					;;
		esac
	salary=$(( $empRatePerHour * $workHrs ))
	totalsalary=$(($totalsalary+$salary))
	((day++))
done

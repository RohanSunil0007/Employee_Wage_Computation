#!/bin/bash -x
echo "Welcome to Employee Wage Computation program"
empCheck=$((1+RANDOM%2))
empRatePerHour=20
fullDayHour=8
partDayHour=4

case $empCheck in
					1) echo "Employee is Present"
						FullTimedailyEmpWage=$(( $empRatePerHour * $fullDayHour  ))
						PartTimedailyEmpWage=$(( $empRatePerHour * $partDayHour  ))
					;;
					2)
						echo "Employee is Absent"
					;;
esac
echo "Full Time Daily Employee Wage : $FullTimedailyEmpWage"
echo "Part Time Daily Employee Wage : $PartTimedailyEmpWage"

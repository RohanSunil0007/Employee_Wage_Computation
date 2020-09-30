#!/bin/bash -x
echo "Welcome to Employee Wage Computation program"
empRatePerHour=20

isPartTime=1
isFullTime=2

numWorkDays=20

MAX_WORKHRS_MONTH=100


totalEmpHrs=0
totalEmpWorkDays=0

function getWorkHrs()
{
		case $empCheck in
                     $isPartTime)
                                     workHrs=4
                                     ;;
                     $isFullTime)
                                     workHrs=8
                                     ;;
                               *)    workHrs=0
                                      ;;
	       	esac
                echo $workHrs
}
function getEmpWage(){
   echo $(($workHrs*$empRatePerHour))
}

declare -A dailyWage ;
while [[ $totalEmpHrs -lt $MAX_WORKHRS_MONTH && $totalEmpWorkDays -lt $numWorkDays ]]
do
   ((totalEmpWorkDays++))
   empCheck=$((RANDOM%3))
   workHrs="$( getWorkHrs $empCheck )"
   totalEmpHrs=$(( $totalEmpHrs + $workHrs ))
   dailyWage["Day $totalEmpWorkDays"]="$( getEmpWage $workHrs)"
done

echo "TOTAL SALARY IS : "
 salary=$(( $empRatePerHour * $totalEmpHrs ))
 echo "Daily Wage " ${dailyWage[@]}
 echo ${!dailyWage[@]}


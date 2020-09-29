#!/bin/bash -x
echo "Welcome to Employee Wage Computation program"
isPresent=1
empCheck=$((1+RANDOM%2))
if [ $isPresent -eq $empCheck ]
then
   echo "Employee is Present"
else
   echo "Employee is Absent"
fi

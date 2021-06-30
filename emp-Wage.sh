#!/bin/bash -x
range=$((2-0+1))
empCheck=$(($(($RANDOM%$range))+0))
echo $empCheck
empWagePerHr=20
if [ $empCheck -eq 1 ]
then
  echo Employee is present
  echo "Employee Full Day Wage is : $(($empWagePerHr*12))"
elif [ $empCheck -eq 2 ]
then
  echo Employee present half day
  echo "Employee Half Day Wage is : $(($empWagePerHr*8))"
else
  echo Employee is absent
  echo "Employee is not present so Wage is : $(($empWagePerHr*0))"
fi

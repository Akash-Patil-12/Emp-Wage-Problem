#!/bin/bash -x
range=$((2-0+1))
empCheck=$(($(($RANDOM%$range))+0))
empWagePerHr=20
totalWorkHr=0
case $empCheck in
   0)
		totalWorkHr=0
	;;
	1)
		totalWorkHr=12
   ;;
   2)
      totalWorkHr=8
   ;;
   *)
      echo "wrong input"
   ;;
esac
echo "Employee total wage is :$(($empWagePerHr*$totalWorkHr))"

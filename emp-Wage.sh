#!/bin/bash -x

totalWorkHr=0
empWagePerHr=20
declare -A totalWage

function cal-TotalworkHr()  {
 for((i=0;i<20;i++))
 do
  range=$((2-0+1))
  empCheck=$(($(($RANDOM%$range))+0))
  case $empCheck in
   0)
		totalWorkHr=$(($totalWorkHr+0))
      dailyWage[$i]=$(($empWagePerHr*o))
	;;
	1)
		totalWorkHr=$(($totalWorkHr+12))
      dailyWage[$i]=$(($empWagePerHr*12))
   ;;
   2)
      totalWorkHr=$(($totalWorkHr+8))
      dailyWage[$i]=$(($empWagePerHr*8))
   ;;
  esac
  totalWage[$i]="$(($totalWorkHr*$empWagePerHr))"
  if (( $totalWorkHr >=100 ))
  then
     break;
  fi

 done
}
cal-TotalworkHr 
for ((j=0;j<${#dailyWage[@]};j++))
{
echo "Day $(($j+1)) Wage :" ${dailyWage[j]}
echo "Total Wage :" ${totalWage[$j]}

}
echo "Employee total wage for a month is :$(($empWagePerHr*$totalWorkHr))"

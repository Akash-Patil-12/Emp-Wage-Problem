#!/bin/bash -x
totalWorkHr=0
empWagePerHr=20
days=1

function cal-TotalworkHr() {
 for((i=1;i<=20;i++))
 do
  range=$((2-0+1))
  empCheck=$(($(($RANDOM%$range))+0))
  case $empCheck in
   0)
		totalWorkHr=$(($totalWorkHr+0))
	;;
	1)
		totalWorkHr=$(($totalWorkHr+12))
   ;;
   2)
      totalWorkHr=$(($totalWorkHr+8))
   ;;
  esac
  ((days=$days+1))
  if (( $totalWorkHr >=100 ))
  then
     break;
  fi
 done
 echo $totalWorkHr
}
getTotalWorkHr=$( cal-TotalworkHr )
echo "value : $getTotalWorkHr"
echo "Employee total wage for a month is :$(($empWagePerHr*$getTotalWorkHr))"

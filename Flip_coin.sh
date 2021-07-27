#!/bin/bash -x
declare -A perheads
declare -A pertails
headsheadsheads=0
tailstailstails=0
headstailstails=0
headstailsheads=0
headsheadstails=0
tailstailsheads=0
tailsheadstails=0
tailsheadsheads=0

tailsheads=0
for ((i=0;i<21;i++))
do
result=$[RANDOM%2]
result1=$[RANDOM%2]
result2=$[RANDOM%2]
if [ $result -eq 1 ] && [ $result1 -eq 1 ] && [ $result2 -eq 1 ]
then
headsheadsheads=$[$headsheadsheads+1]
elif [ $result -eq 0 ] && [ $result1 -eq 0 ] && [ $result2 -eq 0 ] 
then
tailstailstails=$[$tailstailstails+1]
elif [ $result -eq 1 ] && [ $result1 -eq 0 ] && [ $result2 -eq 0 ]
then
headstailstails=$[$headstailstails+1]
elif [ $result -eq 1 ] && [ $result1 -eq 0 ] && [ $result2 -eq 1 ]
then
headstailsheads=$[$headstailsheads+1]
elif [ $result -eq 1 ] && [ $result1 -eq 1 ] && [ $result2 -eq 0 ]
then
headsheadstails=$[$headsheadstails+1]
elif [ $result -eq 0 ] && [ $result1 -eq 0 ] && [ $result2 -eq 1 ]
then
tailstailsheads=$[$tailstailsheads+1]
elif [ $result -eq 0 ] && [ $result1 -eq 1 ] && [ $result2 -eq 0 ]
then
tailsheadstails=$[$tailsheadstails+1]
elif [ $result -eq 0 ] && [ $result1 -eq 1 ] && [ $result2 -eq 1 ]
then
tailsheadsheads=$[$tailsheadsheads+1]
fi
done
perheadheadhead=$[$headsheadsheads*100/21]
echo "Percentage of Heads Heads Heads: $perheadheadhead"
pertailtailtail=$[$tailstailstails*100/21]
echo "Percentage of Tails Tails Tails: $pertailtailtail"
perheadtailhead=$[$headstailsheads*100/21]
echo "Percentage of Heads Tails Heads: $perheadtailhead"
perheadheadtail=$[$headsheadstails*100/21]
echo "Percentage of Heads Heads Tails: $perheadheadtail"
perheadtailtail=$[$headstailstails*100/21]
echo "Percentage of Heads Tails Heads: $perheadtailhead"
pertailtailhead=$[$tailstailsheads*100/21]
echo "Percentage of Tails Tails Heads: $pertailtailhead"
pertailheadtail=$[$tailsheadstails*100/21]
echo "Percentage of Tails Heads Tails: $pertailheadtail"
pertailheadhead=$[$tailsheadsheads*100/21]
echo "Percentage of Tails Heads Heads: $pertailheadhead"
counter=0
  triplet[((counter++))]=$[$perheadheadhead]
  triplet[((counter++))]=$[$pertailtailtail]
  triplet[((counter++))]=$[$perheadtailhead]
  triplet[((counter++))]=$[$perheadheadtail]
  triplet[((counter++))]=$[$pertailtailhead]
  triplet[((counter++))]=$[$pertailheadtail]
  triplet[((counter++))]=$[$perheadtailtail]
  triplet[((counter++))]=$[$pertailheadhead]
temp=0
for ((i=0;i<8;i++))
do
 for ((j=i+1;j<8;j++))
 do
  if [ ${triplet[i]} -lt ${triplet[j]} ]
  then
  temp=$[${triplet[i]}]
  triplet[i]=$[${triplet[j]}]
  triplet[j]=$[$temp]
  fi
 done
done

echo "Sorted Triplet Array By Percentage is: ${triplet[@]}"
greatest=$[${triplet[0]}]
case $greatest in
  $perheadheadhead)
    echo "HHH wins"
  ;;
  $pertailtailtail)
    echo "TTT wins"
  ;;
  $perheadtailhead)
    echo "HTH wins"
  ;;
  $perheadtailtail)
    echo "HTT wins"
  ;;
  $perheadheadtail)
    echo "HHT wins"
  ;;
  $pertailheadtail)
    echo "THT wins"
  ;;
  $pertailtailhead)
    echo "TTH wins"
  ;;
  $pertailheadhead)
    echo "THH wins"
  ;;
esac

headsheads=0
tailstails=0
headstails=0
tailsheads=0

for ((i=0;i<21;i++))
do
result=$[RANDOM%2]
result1=$[RANDOM%2]
if [ $result -eq 0 ] && [ $result1 -eq 1 ]
then
tailsheads=$[$tailsheads+1]
elif [ $result -eq 0 ] && [ $result1 -eq 0 ]
then
tailstails=$[$tailstails+1]
elif [ $result -eq 1 ] && [ $result1 -eq 0 ]
then
headstails=$[$headstails+1]
elif [ $result -eq 1 ] && [ $result1 -eq 1 ]
then
headsheads=$[$headsheads+1]
fi
done
perheadhead=$[$headsheads*100/21]
echo "Percentage of Heads Heads: $perheadhead"
pertailtail=$[$tailstails*100/21]
echo "Percentage of Tails Tails: $pertailtail"
perheadtail=$[$headstails*100/21]
echo "Percentage of Heads Tails: $perheadtail"
pertailhead=$[$tailsheads*100/21]
echo "Percentage of Tails Heads: $pertailhead"

 counter1=0
  doublet[((counter1++))]=$[$perheadhead]
  doublet[((counter1++))]=$[$pertailtail]
  doublet[((counter1++))]=$[$pertailhead]
  doublet[((counter1++))]=$[$perheadtail]

for ((i=0;i<4;i++))
do
 for ((j=i+1;j<4;j++))
 do
  if [ ${doublet[i]} -lt ${doublet[j]} ]
  then
  temp=$[${doublet[i]}]
  doublet[i]=$[${doublet[j]}]
  doublet[j]=$[$temp]
  fi
 done
done
echo "Sorted Doublet Array Pecentage is :  ${doublet[@]} "
greatest1=$[${doublet[0]}]
case $greatest1 in
  $perheadhead)
    echo "HH wins"
  ;;
  $pertailtail)
    echo "TT wins"
  ;;
  $perheadtail)
    echo "HT wins"
  ;;
  $pertailhead)
    echo "TH wins"
  ;;

esac

heads=0
tails=0
for ((i=0;i<21;i++))
do
result=$[RANDOM%2]
if [ $result -eq 0 ]
then
tails=$[$tails+1]
else
heads=$[$heads+1]
fi
done
perhead=$[$heads*100/21]
echo "Percentage of Heads: $perhead"
pertail=$[$tails*100/21]
echo "Percentage of Tails: $pertail"
counter2=0
singlet[((counter2++))]=$perhead
singlet[((counter2++))]=$pertail

for ((i=0;i<2;i++))
do
 for ((j=i+1;j<2;j++))
 do
  if [ ${singlet[i]} -lt ${singlet[j]} ]
  then
  temp=$[${singlet[i]}]
  singlet[i]=$[${singlet[j]}]
  singlet[j]=$[$temp]
  fi
 done
done
echo "Sorted Singlet Array Percentage is :  ${singlet[@]} "
greatest2=$[${singlet[0]}]
case $greatest2 in
  $perhead)
    echo "H wins"
  ;;
  $pertail)
    echo "T wins"
  ;;
esac


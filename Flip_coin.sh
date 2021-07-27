#!/bin/bash -x
declare -A perheads
declare -A pertails
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
elif [ $result -eq 0 ] && [ $result -eq 0 ]
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

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
perheadtailhead=$[$headstailsheads*100/21]
echo "Percentage of Heads Tails Heads: $perheadtailhead"
pertailtailhead=$[$tailstailsheads*100/21]
echo "Percentage of Tails Tails Heads: $pertailtailhead"
pertailheadtail=$[$tailsheadstails*100/21]
echo "Percentage of Tails Heads Tails: $pertailheadtail"
pertailheadhead=$[$tailsheadsheads*100/21]
echo "Percentage of Tails Heads Heads: $pertailheadhead"

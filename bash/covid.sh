#!/bin/bash
#This script download covid data and displays it

DATA=$(curl https://api.covidtracking.com/v1/us/current.json)
POSITIVE=$(echo $DATA | jq '.[0].positive')
NEGATIVE=$(echo $DATA | jq '.[0].negative')
PENDING=$(echo $DATA | jq '.[0].pending')
DEATH=$(echo $DATA | jq '.[0].death')
DEATHINCREASE=$(echo $DATA | jq '.[0].deathIncrease')

TODAY=$(date)

echo "On $TODAY, there were $POSITIVE positive COVID Cases and $NEGATIVE negative cases. Currently their are $PENDING pending cases. $DEATH people have died from COVID and the increase in deaths have been $DEATHINCREASE deaths"

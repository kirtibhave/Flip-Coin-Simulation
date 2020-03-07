#!/bin/bash 
echo "**********Welcome to Flip Coin Simulation problem**********"

declare -A singleCoinDictionary
HEAD=0
TAIL=1
for(( i=1;i<=15;i++ ))
do
  flipCoin=$((RANDOM%2))
  if [ $flipCoin -eq 1 ]
  then
       singleCoinDictionary[HEAD]=$((${singleCoinDictionary[HEAD]}+1))
       HEAD_PER=$((${singleCoinDictionary[HEAD]}*100/15))
  else
       singleCoinDictionary[TAIL]=$((${singleCoinDictionary[TAIL]}+1))
       TAIL_PER=$((${singleCoinDictionary[TAIL]}*100/15))
  fi
done
echo ${!singleCoinDictionary[@]}
echo "percentage is:" ${singleCoinDictionary[@]}

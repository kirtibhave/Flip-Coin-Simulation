#!/bin/bash -x
echo "**********Welcome to Flip Coin Simulation problem**********"

HEAD=0
TAIL=1
flipCoin=$((RANDOM%2))
if [ $HEAD == $flipCoin ]
then
	echo "HEAD"
else
	echo "TAIL"
fi

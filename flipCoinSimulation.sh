#!/bin/bash 
H=0
T=1
declare -A flipCoin
read -p "enter  how many times to flip coin" countOfFlip
read -p "enter your choice 1] Singlet 2] Doublet 3] Triplet " choice
case $choice in
		1)
			noOfCoin=1
			;;
		2)
			noOfCoin=2
			;;
		3)
			noOfCoin=3
			;;
		*)
			echo "Invalid coice"
esac

function flip(){
	for ((i=1; i<=$1; i++))
	do
		for ((j=1; j<=$2; j++))
		do
			flipResult=$((RANDOM%2))
			if [ $flipResult -eq 0 ]
			then
				coin+=H
			else
				coin+=T
			fi
		done
			count $coin
			coin=""
	done
}

function count() {
	flipCoin[$1]=$((${flipCoin[$1]}+1))
}

function flipCoinPercentage() {
	for i in ${!flipCoin[@]}
	do
		flipCoin[$i]=`echo "scale=2; ${flipCoin[$i]}*100/$countOfFlip" | bc`
	done
		echo "Key value is: ${!flipCoin[@]}"
		echo "percentage: ${flipCoin[@]}"
}

function sortingPercentage() {
	for i in ${!flipCoin[@]}
	do
		echo "$i ${flipCoin[$i]}"
	done | sort -k2 -rn | head -1
}

echo ${!flipCoin[@]}
echo ${flipCoin[@]}
flip $countOfFlip $noOfCoin
flipCoinPercentage
sortingPercentage

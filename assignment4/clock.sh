#!/bin/sh
while true
do
	ans=$(date +"%T")
	clear
	banner $ans
	sleep 1
done



#while true
#do
#	for i in `seq 0 1 23`
#	do
#		for j in `seq 0 1 59`
#		do
#			for k in `seq 0 1 59`
#			do
#				clear
#				banner $i:$j:$k
#				sleep 1
#			done
#		done
#	done
#done


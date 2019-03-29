#!/bin/sh
# Prog : diskon.sh
# Dean Christoper
# 14116002
# RA

echo -n "Total Pembelian : "
read total

if [ $total -ge 0 -a $total -lt 1000000 ]
then
	diskon=0
elif [ $total -eq 1000000 ]
then
	diskon=`expr $total \* 25 / 100`

elif [ $total -gt 1000000 -a $total -le 6000000 ]
then
	a=`expr $total - 1000000`
	b=`expr $a \* 30 / 100`
	diskon=`expr $b + 250000`

elif [ $total -gt 6000000 ]
then
	a=`expr $total - 6000000`
	b=`expr $a \* 35 / 100`
	diskon=`expr $b + $c + 1750000`
else
	diskon=""
fi

echo "Diskon = " $diskon

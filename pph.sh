#!/bin/sh
# Prog: pph.sh
# Dean Christoper
# 14116002
# RA

echo -n "Gaji = "
read gaji

if [ $gaji -ge 0 -a $gaji -le 10000000 ]
then
	pph=`expr $gaji \* 15 / 100`

elif [ $gaji -gt 10000000 -a $gaji -le 35000000 ]
then
	a=`expr $gaji - 10000000`
	b=`expr $a \* 25 / 100`
	c=`expr 10000000 \* 15 / 100`	
	pph=`expr $b + $c`

elif [ $gaji -gt 35000000 ]
then
	a=`expr $gaji - 35000000`
	b=`expr $a \* 35 / 100`
	pph=`expr 1500000 + 6250000 + $b`
else
	pph=""
fi

echo "PPH  = " $pph

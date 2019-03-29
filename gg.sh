#!/bin/sh
# Prog : gg.sh
# Reza Pahlevi
# 14116002
# RA

echo -n "Masukkan angka = "
read angka
if [ $angka -ge 0 ]
then
	if [ `expr $angka % 2` -eq 0 ]
	then
		echo $angka" adalah bilangan genap"
	else
		echo $angka" adalah bilangan ganjil"
	fi
else
	echo $angka" bukan bilangan positif"
fi

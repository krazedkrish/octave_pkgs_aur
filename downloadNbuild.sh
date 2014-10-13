#!/bin/bash

cd pkgs
for i in ./*
do
	echo $i
	cd $i
	makepkg -od
	cd ..
done

for i in ./*
do
	echo $i
	cd $i
	makepkg -o
	cd ..
done

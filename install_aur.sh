#!/bin/bash

cd pkgs
for i in ./*
do
	echo $i
	cd $i
	makepkg -is
	cd ..
done

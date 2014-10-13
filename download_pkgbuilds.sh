#!/bin/bash

move_downloaded () {
	tar xzf $1.tar.gz
	mv $1 ../pkgs/
}

mkdir -p compressed
mkdir -p pkgs
cd compressed
while read i
do
	echo $i
	wget -c https://aur.archlinux.org/packages/oc/$i/$i.tar.gz -o /dev/null
	move_downloaded $i&
done < ../octavefiles

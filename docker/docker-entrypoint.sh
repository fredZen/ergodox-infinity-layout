#!/bin/bash
set -e

cd /controller

case $1 in
	sh)
		exec /bin/bash
		;;
	get)
		cp Keyboards/ergodox.bash /kiibohd
		;;
	*)
		cp /kiibohd/*.bash Keyboards
		cp /kiibohd/*.kll kll/layouts
		cd Keyboards
		./$1
		cp ICED-L/kiibohd.dfu.bin /kiibohd/left_kiibohd.dfu.bin
		cp ICED-R/kiibohd.dfu.bin /kiibohd/right_kiibohd.dfu.bin
		;;
esac

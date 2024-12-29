#!/bin/sh
if [ -d zkm ];then
	git -C zkm checkout
	git -C zkm pull --rebase
else
	git clone https://github.com/zkMIPS/zkm.git
fi

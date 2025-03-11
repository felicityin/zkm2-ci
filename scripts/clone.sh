#!/bin/sh

if [ -d zkm2 ]; then
    git -C zkm2 checkout
    git -C zkm2 pull --rebase
else
    git clone git@github.com:felicityin/zkMIPS/zkm2.git
fi

if [ -d zkvm-benchmarks ]; then
    git -C zkvm-benchmarks checkout
    git -C zkvm-benchmarks pull --rebase
else
    git clone https://github.com/zkMIPS/zkvm-benchmarks.git
fi

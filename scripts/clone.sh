#!/bin/sh

if [ -d zkMIPS ]; then
    git -C zkMIPS checkout
    git -C zkMIPS pull --rebase
else
    git clone https://github.com/zkMIPS/zkMIPS.git
fi

if [ -d zkvm-benchmarks ]; then
    git -C zkvm-benchmarks checkout
    git -C zkvm-benchmarks pull --rebase
else
    git clone https://github.com/zkMIPS/zkvm-benchmarks.git
fi

#!/bin/sh

if [ -d zkvm-benchmarks ]; then
    git -C zkvm-benchmarks checkout
    git -C zkvm-benchmarks pull --rebase
else
    git clone https://github.com/zkMIPS/zkvm-benchmarks.git
fi

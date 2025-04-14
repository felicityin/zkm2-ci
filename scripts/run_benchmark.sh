#!/bin/sh

. "$HOME/.zkm-toolchain/env"

cd zkvm-benchmarks/zkm2

RUSTFLAGS="-C target-cpu=native" cargo run --bin all --release

#!/bin/sh

. "$HOME/.zkm-toolchain/env"

cd zkMIPS/examples/fibonacci

RUSTFLAGS="-C target-cpu=native" cargo run -r --bin groth16_bn254

RUSTFLAGS="-C target-cpu=native" cargo run -r --bin plonk_bn254

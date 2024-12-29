#!/bin/sh

. "$HOME/.zkm-toolchain/env"

cd zkm
cd prover/examples/sha2-rust/host
ARGS="711e9609339e92b03ddc0a211827dba421f38f9ed8b9d806e1ffdd8c15ffa03d world!" RUST_LOG=info SEG_OUTPUT=/tmp/rust cargo run --release

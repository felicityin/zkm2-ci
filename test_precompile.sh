#!/bin/sh

. "$HOME/.zkm-toolchain/env"

cd zkm
cd prover/examples/sha2-rust/host
cargo check

cd ../../sha2-precompile/host
RUST_LOG=info PRECOMPILE_PATH=../../sha2-rust/guest/elf/mips-zkm-zkvm-elf SEG_OUTPUT=/tmp/precompile cargo run --release

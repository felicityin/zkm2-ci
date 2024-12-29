#!/bin/sh

. "$HOME/.zkm-toolchain/env"

cd zkm
cd prover/examples/revme/host
RUST_LOG=info JSON_PATH=../../../../emulator/test-vectors/test.json SEG_OUTPUT=/tmp/output SEG_SIZE=262144 cargo run --release

#!/bin/sh

cd zkm
cd prover/examples/sha2-go/guest
GOOS=linux GOARCH=mips GOMIPS=softfloat go build .
cd ../host
SEG_SIZE=32768 ARGS="711e9609339e92b03ddc0a211827dba421f38f9ed8b9d806e1ffdd8c15ffa03d world!" RUST_LOG=info SEG_OUTPUT=/tmp/go cargo run --release

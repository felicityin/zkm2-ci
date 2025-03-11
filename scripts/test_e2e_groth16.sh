#!/bin/sh

. "$HOME/.zkm-toolchain/env"

cd zkm2
ZKM_DEV=true FRI_QUERIES=1 cargo test -r test_e2e_prove_groth16

#!/usr/bin/env bash
set -e

for i in {1..10}
do
	echo "=== START TEST NUMBER ${i} ==="
	docker run -v "$(go env GOPATH)/src/github.com/woop-chain/woop:/go/src/github.com/woop-chain/woop" woopchain/localnet-test
	echo "=== END TEST NUMBER ${i} ==="
done

#!/bin/bash

export GOPATH=$(go env GOPATH)
export PATH="$PATH:$(go env GOPATH)/bin"

errcheck  -- ./... | while read line ; do
    echo "$line //<-- missing err handling"
done
exit 0
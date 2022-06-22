#!/bin/bash


# Look for new versions at https://github.com/dominikh/go-tools/releases

export GOPATH=$(go env GOPATH)
export PATH="$PATH:$(go env GOPATH)/bin"


staticcheck  -- ./... || exit 0

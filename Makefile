# This Makefile is meant to be used by people that do not usually work
# with Go source code. If you know what GOPATH is then you probably
# don't need to bother with make.

.PHONY: all test clean

GOBIN = build/bin

all: export GO111MODULE=off
all:
	build/env.sh go get -v ./...

test: export GO111MODULE=off
test: all
	build/env.sh go test -v ./...

clean:
	rm -fr build/_workspace/pkg/ $(GOBIN)/*

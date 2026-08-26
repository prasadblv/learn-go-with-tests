.DEFAULT_GOAL:=all

.PHONY:build clean fmt vet test

fmt:
	go fmt ./...

vet: fmt
	go vet ./...

build: vet
	go build ./...

test: build
	go test -v ./... ./hello_world/...

all: test
	@echo "\n***Build and Test Complete!***\n"

clean:
	go clean
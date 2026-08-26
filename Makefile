.DEFAULT_GOAL:=build

.PHONY:build clean fmt vet test

fmt:
	go fmt ./...

vet: fmt
	go vet ./...

build: vet
	go build ./...

test:
	go test -v ./... ./hello_world/...

clean:
	go clean
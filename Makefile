.DEFAULT_GOAL:=build

.PHONY:build clean fmt vet

fmt:
	go fmt ./...

vet: fmt
	go vet ./...

build: vet
	go build ./...

clean:
	go clean
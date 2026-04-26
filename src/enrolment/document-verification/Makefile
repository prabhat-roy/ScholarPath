.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/document-verification .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/document-verification:latest .

docker-run:
	docker run --rm -p 50042:50042 --env-file .env scholarpath/document-verification:latest

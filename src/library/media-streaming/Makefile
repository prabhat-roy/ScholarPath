.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/media-streaming .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/media-streaming:latest .

docker-run:
	docker run --rm -p 50223:50223 --env-file .env scholarpath/media-streaming:latest

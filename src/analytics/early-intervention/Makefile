.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/early-intervention .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/early-intervention:latest .

docker-run:
	docker run --rm -p 50261:50261 --env-file .env scholarpath/early-intervention:latest

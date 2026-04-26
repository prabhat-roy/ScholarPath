.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/parent-portal .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/parent-portal:latest .

docker-run:
	docker run --rm -p 50182:50182 --env-file .env scholarpath/parent-portal:latest

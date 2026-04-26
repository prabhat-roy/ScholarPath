.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/breakout-rooms .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/breakout-rooms:latest .

docker-run:
	docker run --rm -p 50080:50080 --env-file .env scholarpath/breakout-rooms:latest

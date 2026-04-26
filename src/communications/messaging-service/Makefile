.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/messaging-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/messaging-service:latest .

docker-run:
	docker run --rm -p 50180:50180 --env-file .env scholarpath/messaging-service:latest

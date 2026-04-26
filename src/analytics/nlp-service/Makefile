.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/nlp-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/nlp-service:latest .

docker-run:
	docker run --rm -p 50263:50263 --env-file .env scholarpath/nlp-service:latest

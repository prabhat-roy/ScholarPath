.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/recommendation-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/recommendation-service:latest .

docker-run:
	docker run --rm -p 50162:50162 --env-file .env scholarpath/recommendation-service:latest

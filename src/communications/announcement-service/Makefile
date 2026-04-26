.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/announcement-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/announcement-service:latest .

docker-run:
	docker run --rm -p 50181:50181 --env-file .env scholarpath/announcement-service:latest

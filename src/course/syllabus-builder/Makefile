.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/syllabus-builder .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/syllabus-builder:latest .

docker-run:
	docker run --rm -p 50062:50062 --env-file .env scholarpath/syllabus-builder:latest

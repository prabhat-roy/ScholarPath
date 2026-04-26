.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/admission-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/admission-service:latest .

docker-run:
	docker run --rm -p 50040:50040 --env-file .env scholarpath/admission-service:latest

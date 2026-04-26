.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/teacher-bff .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/teacher-bff:latest .

docker-run:
	docker run --rm -p 50002:50002 --env-file .env scholarpath/teacher-bff:latest

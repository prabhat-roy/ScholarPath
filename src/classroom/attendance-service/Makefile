.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/attendance-service .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/attendance-service:latest .

docker-run:
	docker run --rm -p 50083:50083 --env-file .env scholarpath/attendance-service:latest

.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/parent-sso .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/parent-sso:latest .

docker-run:
	docker run --rm -p 50022:50022 --env-file .env scholarpath/parent-sso:latest

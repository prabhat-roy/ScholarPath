.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/credential-verifier .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/credential-verifier:latest .

docker-run:
	docker run --rm -p 50141:50141 --env-file .env scholarpath/credential-verifier:latest

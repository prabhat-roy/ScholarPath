.PHONY: build test run lint tidy docker-build
build:
	go build -o bin/webhook-router .
test:
	go test ./... -v -race
run:
	go run .
tidy:
	go mod tidy
lint:
	golangci-lint run ./...
docker-build: tidy
	docker build -t scholarpath/webhook-router:latest .
docker-run:
	docker run --rm -p 50009:50009 --env-file .env scholarpath/webhook-router:latest

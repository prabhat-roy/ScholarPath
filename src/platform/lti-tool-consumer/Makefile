.PHONY: build test run lint tidy docker-build
build:
	go build -o bin/lti-tool-consumer .
test:
	go test ./... -v -race
run:
	go run .
tidy:
	go mod tidy
lint:
	golangci-lint run ./...
docker-build: tidy
	docker build -t scholarpath/lti-tool-consumer:latest .
docker-run:
	docker run --rm -p 50008:50008 --env-file .env scholarpath/lti-tool-consumer:latest

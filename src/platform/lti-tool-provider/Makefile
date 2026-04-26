.PHONY: build test run lint tidy docker-build
build:
	go build -o bin/lti-tool-provider .
test:
	go test ./... -v -race
run:
	go run .
tidy:
	go mod tidy
lint:
	golangci-lint run ./...
docker-build: tidy
	docker build -t scholarpath/lti-tool-provider:latest .
docker-run:
	docker run --rm -p 50007:50007 --env-file .env scholarpath/lti-tool-provider:latest

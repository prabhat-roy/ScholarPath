.PHONY: build test run lint tidy docker-build
build:
	go build -o bin/service-registry .
test:
	go test ./... -v -race
run:
	go run .
tidy:
	go mod tidy
lint:
	golangci-lint run ./...
docker-build: tidy
	docker build -t scholarpath/service-registry:latest .
docker-run:
	docker run --rm -p 50012:50012 --env-file .env scholarpath/service-registry:latest

.PHONY: build test run lint tidy docker-build
build:
	go build -o bin/feature-flag-proxy .
test:
	go test ./... -v -race
run:
	go run .
tidy:
	go mod tidy
lint:
	golangci-lint run ./...
docker-build: tidy
	docker build -t scholarpath/feature-flag-proxy:latest .
docker-run:
	docker run --rm -p 50010:50010 --env-file .env scholarpath/feature-flag-proxy:latest

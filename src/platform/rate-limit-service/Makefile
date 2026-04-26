.PHONY: build test run lint tidy docker-build
build:
	go build -o bin/rate-limit-service .
test:
	go test ./... -v -race
run:
	go run .
tidy:
	go mod tidy
lint:
	golangci-lint run ./...
docker-build: tidy
	docker build -t scholarpath/rate-limit-service:latest .
docker-run:
	docker run --rm -p 50013:50013 --env-file .env scholarpath/rate-limit-service:latest

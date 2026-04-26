.PHONY: build test run lint tidy docker-build
build:
	go build -o bin/config-service .
test:
	go test ./... -v -race
run:
	go run .
tidy:
	go mod tidy
lint:
	golangci-lint run ./...
docker-build: tidy
	docker build -t scholarpath/config-service:latest .
docker-run:
	docker run --rm -p 50011:50011 --env-file .env scholarpath/config-service:latest

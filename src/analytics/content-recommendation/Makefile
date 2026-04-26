.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/content-recommendation .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/content-recommendation:latest .

docker-run:
	docker run --rm -p 50262:50262 --env-file .env scholarpath/content-recommendation:latest

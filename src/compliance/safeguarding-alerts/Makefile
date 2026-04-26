.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/safeguarding-alerts .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/safeguarding-alerts:latest .

docker-run:
	docker run --rm -p 50283:50283 --env-file .env scholarpath/safeguarding-alerts:latest

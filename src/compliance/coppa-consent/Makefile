.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/coppa-consent .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/coppa-consent:latest .

docker-run:
	docker run --rm -p 50281:50281 --env-file .env scholarpath/coppa-consent:latest

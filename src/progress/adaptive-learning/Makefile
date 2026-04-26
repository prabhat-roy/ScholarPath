.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/adaptive-learning .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/adaptive-learning:latest .

docker-run:
	docker run --rm -p 50163:50163 --env-file .env scholarpath/adaptive-learning:latest

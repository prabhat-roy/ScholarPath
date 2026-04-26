.PHONY: build test run lint tidy docker-build

build:
	go build -o bin/student-sso .

test:
	go test ./... -v -race

run:
	go run .

tidy:
	go mod tidy

lint:
	golangci-lint run ./...

docker-build: tidy
	docker build -t scholarpath/student-sso:latest .

docker-run:
	docker run --rm -p 50021:50021 --env-file .env scholarpath/student-sso:latest

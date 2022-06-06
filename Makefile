
export GOPRIVATE=github.com/AnimationMentor/*


all: generate lint vet test

depend:
	go get -t -v -d ./...
	go mod tidy

upgrade-deps:
	go get -u -t ./...
	go mod tidy

generate:
	go generate ./...

lint:
	golint ./...

test:
	gotestsum

test-report:
	go test ./... -short -json | go-test-report

vet:
	go vet ./...

static-check:
	staticcheck -- ./... -tests=false -unused.whole-program=true

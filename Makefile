# build only
build:
	go build -o notely
	

# build & run 
run:
	go build -o notely && ./notely
# local test
test:
	go test ./...
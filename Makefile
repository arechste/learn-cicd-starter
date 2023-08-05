# build only
build:
	go build -o notely
	

# build & run 
run:
	go build -o notely && ./notely
# local test
test:
	go test ./...

docker-build: 
	#./scripts/buildprod.sh && docker build -t DOCKERHUB_NAMESPACE/notely:latest .
	./scripts/buildprod.sh && docker build -t arechste/notely:latest .

docker-run:
	#docker run -e PORT=8000 -p 8000:8000 DOCKERHUB_NAMESPACE/notely:latest
	docker run -e PORT=8000 -p 8000:8000 arechste/notely:latest

docker-build:
	docker build -t e-commerce .

docker-up:
	docker run --publish 8000:3000 $(shell docker images e-commerce:latest --format="{{.ID}}" | head -1) &

docker-down:
	docker stop $(shell docker ps --filter ancestor=e-commerce:latest --format="{{.ID}}" | head -1)

docker-clean:
	docker rmi e-commerce
	docker container prune
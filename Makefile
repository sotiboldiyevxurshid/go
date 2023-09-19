docker-build:
	docker build --tag crm-dev:tag .
docker-run:
	docker run -p 8080:8080 --name=golang -d docker.io/library/crm-dev:tag  
docker-start:
	make docker-build && make docker-run


docker-remove:
	docker stop golang
docker-delete:
	docker rm golang  
docker-stop:
	make docker-remove && make docker-delete



# # # Makefile for building and tagging Docker image

# IMAGE_NAME = go-golang
# TAG = latest

# build:
# 	docker build  --tag  $(IMAGE_NAME):$(TAG) .

# run:
# 	docker run -p 9080:80 --name=golang $(IMAGE_NAME):$(TAG)

# docker-start:
# 	make build && make run

# clean:
# 	docker rmi $(IMAGE_NAME):$(TAG)

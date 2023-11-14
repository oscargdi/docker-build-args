DOCKER_IMAGE_TAG = docker-build-args

.PHONY: build
build:
	docker build --build-arg BUILD_GREETING="Hello world!" -t ${DOCKER_IMAGE_TAG} .

.PHONY: run
run:
	docker run --rm ${DOCKER_IMAGE_TAG}

.PHONY: start
start: build run

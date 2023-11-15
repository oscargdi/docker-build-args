BUILD = $(shell git log -1 --pretty=format:"%H")

.PHONY: build
build:
	docker build --no-cache -t application-${BUILD} --build-arg BUILD=${BUILD} .

.PHONY: run
run:
	docker run --rm application-${BUILD}

.PHONY: start
start: build run

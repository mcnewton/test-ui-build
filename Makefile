
SHELL=/bin/sh
DOCKER_UID=$(shell id -u):$(shell id -g)

.PHONY: bundle.docker
bundle.docker: docker.image
	docker run -u $(DOCKER_UID) -v ${PWD}:/build --rm antora-build /bin/sh -c "npm install ; gulp bundle"

.PHONY: docker.image
docker.image:
	docker build -t antora-build .


UBUNTU_XENIAL_DOCKERFILE=Dockerfile-Ubuntu-Xenial
UBUNTU_XENIAL_TAG=supervisor-ubuntu-xenial

UBUNTU_BONIC_DOCKERFILE=Dockerfile-Ubuntu-Bionic
UBUNTU_BIONIC_TAG=supervisor-ubuntu-bionic

UBUNTU_FOCAL_DOCKERFILE=Dockerfile-Ubuntu-Focal
UBUNTU_FOCAL_TAG=supervisor-ubuntu-focal

build-xenial:
	docker build --file $(UBUNTU_XENIAL_DOCKERFILE) --tag $(UBUNTU_XENIAL_TAG) .

run-xenial: build-xenial
	docker run --tty --interactive $(UBUNTU_XENIAL_TAG) bash

build-bionic:
	docker build --file $(UBUNTU_BONIC_DOCKERFILE) --tag $(UBUNTU_BIONIC_TAG) .

run-bionic: build-bionic
	docker run --tty --interactive $(UBUNTU_BIONIC_TAG) bash

build-focal:
	docker build --file $(UBUNTU_FOCAL_DOCKERFILE) --tag $(UBUNTU_FOCAL_TAG) .

run-focal: build-focal
	docker run --tty --interactive $(UBUNTU_FOCAL_TAG) bash

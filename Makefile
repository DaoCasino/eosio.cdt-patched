# confguration
img_name := ubuntu-cdt-patched
img_tag  := latest

# other variables
nproc := $(shell nproc)


default: docker-image

.PHONY: help
help:
	@echo "Commands:"
	@echo ""
	@echo "  docker-image : build eosio.cdt package inside Docker"

.PHONY: docker-image
docker-image:
	docker build -t $(img_name):$(img_tag) --build-arg nproc=$(nproc) -f Dockerfile.ubuntu.patched-cdt .

DOCKER=docker
DOCKER_IMAGE=gdax-tt-dumb

docker-base:
	${DOCKER} build \
		--rm --force-rm \
		-t=${DOCKER_IMAGE} \
		.

docker-shell:
	${DOCKER} run \
		--rm -it \
		-v "${PWD}:/src" \
	 ${DOCKER_IMAGE} bash
	sudo chown -R ${USER}: .

nix-shell:
	nix-shell \
		-I nixpkgs=${HOME}/nixpkgs \
		-p nodejs-8_x yarn \
		--command "echo $$PATH; return"

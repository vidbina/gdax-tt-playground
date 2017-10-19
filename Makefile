DOCKER=docker

nix-shell:
	nix-shell \
		-p nodejs-8_x yarn

DOCKER=docker

nix-shell:
	nix-shell \
		-I nixpkgs=${HOME}/nixpkgs \
		-p nodejs-8_x yarn \
		--command "echo $$PATH; return"

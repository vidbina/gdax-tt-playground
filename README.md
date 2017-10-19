# GDAX Monkey :monkey:

## Setup

Requirements
 - nodejs >= 7.6.0 (developed against 8.7.0)
 - yarn (developed with 1.2.1)

Spawn your environment (either in Nix or docker) and run

    yarn

### Docker

Build the base image using `make docker-base` then subsequently start the shell
using `docker-shell`.

### Nix

Make sure that ~/nixpkgs exists. In my case ~/nixpkgs contains an update from
yarn `1.0.1` to `1.2.1`.

Add node_modules/.bin to $PATH to simplify use.

    export PATH=$PATH:`realpath node_modules/.bin`

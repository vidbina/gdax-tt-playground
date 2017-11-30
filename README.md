# GDAX Monkey :monkey:

## Setup

Requirements
 - nodejs >= 7.6.0 (developed against 8.7.0)
 - yarn (developed with 1.2.1)

Spawn your environment (either in Nix or docker) and run

    yarn

### Docker

Build the base image using `make docker-base` then subsequently start the shell
using `make docker-shell`.

### Nix

Spawn a nix-shell using the command `nix-shell`.

FROM node:8.2.0-slim

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
 && rm -rf /var/lib/apt/lists/*

# SOURCE: https://yarnpkg.com/lang/en/docs/install/
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y \
    yarn \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /src
ENV PATH "${PATH}:/src/node_modules/.bin"

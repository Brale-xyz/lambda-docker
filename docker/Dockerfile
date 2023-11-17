# https://github.com/aws/aws-lambda-nodejs-runtime-interface-client#requirements
FROM node:20

ENV NODE_ENV=prod

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
      make \
      cmake \
      unzip \
      libcurl4-openssl-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install esbuild
ARG ESBUILD_VERSION=0
RUN npm install --global --unsafe-perm=true esbuild@$ESBUILD_VERSION

# Install the lambda runtime stuff
RUN npm install --global --unsafe-perm=true aws-lambda-ric
ADD https://github.com/aws/aws-lambda-runtime-interface-emulator/releases/latest/download/aws-lambda-rie /usr/bin/aws-lambda-rie

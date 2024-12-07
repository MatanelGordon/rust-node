FROM rust:1.83.0
LABEL maintainer="Matanel Gordon"
RUN apt update -y
# install nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | sh && apt install nodejs -y
# make "CLI" button to work with bash - easier for debugging
RUN ln -sf /bin/bash /bin/sh
# Install common package managers
RUN npm i -g yarn pnpm
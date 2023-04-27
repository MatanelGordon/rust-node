FROM rust
LABEL maintainer="MatanelGordon"
SHELL ["/bin/bash", "-c"]
RUN apt update -y
# install nodejs
RUN ["/bin/bash", "-c", "curl -fsSL https://deb.nodesource.com/setup_18.x | sh && apt install nodejs -y"]
# make "CLI" button to work with bash
RUN ln -sf /bin/bash /bin/sh
# Install common package managers
RUN npm i -g yarn pnpm

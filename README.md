# rust-node

A rust image with built-in nodejs for various purposes.

> WARNING: This is not a image to serve projects with! Consider it as a builder image. use multi-stage builds as stated below.

## Features

- node v20
- npm v10
- built in yarn & pnpm
- rust 1.76.0
- bash-sh aliasing for better CLI support for Docker Desktop

## Use Cases

- To build a rust projects involved with node momorepos
- To build web-assembly projects

 > NOTE: This image is only for building stage, Do not use this as final image in dockerfiles.
 
## Usage

To diploy a node site based on rust packages

```Dockerfile
FROM 15012002/rust-node as builder
WORKDIR /usr/app
copy . .
RUN cargo update && npm install
RUN cargo build && npm run build


FROM nginx:latest
COPY --from=builder /usr/app/dist /usr/share/nginx/html
```

> NOTE: The Dockerfile above wont work yet it sets a fair demonstration of how it should be used.

### handling CLI

This image comes with bash support out-of-the box.
Just click the `CLI` button in your docker desktop or via the command line:

```bash
 docker exec -it mycontainer sh
```

### Manual Build

Feel free to build this image manually by cloning its [github repository](https://github.com/MatanelGordon/rust-node)

To build the image, *make sure you have docker installed* and use:

```bash
docker build . -t rust-node 
```

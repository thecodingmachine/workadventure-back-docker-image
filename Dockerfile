ARG NODE_VERSION
FROM thecodingmachine/nodejs:${NODE_VERSION}

RUN sudo apt-get update && sudo apt-get install -y inotify-tools protobuf-compiler

ARG NODE_VERSION
FROM thecodingmachine/nodejs:v2-${NODE_VERSION}-bullseye

RUN sudo apt-get update && sudo apt-get install -y inotify-tools protobuf-compiler

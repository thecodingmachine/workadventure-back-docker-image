FROM thecodingmachine/nodejs:12

RUN sudo apt-get update && sudo apt-get install unzip inotify-tools
RUN mkdir protobuf && cd protobuf \
    && curl -L -o protobuf.zip https://github.com/protocolbuffers/protobuf/releases/download/v3.13.0/protoc-3.13.0-linux-x86_64.zip \
    && unzip protobuf.zip \
    && sudo mv bin/protoc /usr/local/bin/ \
    && sudo mv include/* /usr/local/include/ \
    && cd .. \
    && rm -rf protobuf

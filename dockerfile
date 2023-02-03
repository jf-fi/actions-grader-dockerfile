FROM --platform=linux/amd64 rust:bullseye
SHELL ["/bin/bash", "-c"]

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y git

RUN git clone "https://github.com/learn-co-curriculum/test-logger"
RUN cargo install --path test-logger

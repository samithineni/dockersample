FROM ubuntu:latest
LABEL authors="sures"

ENTRYPOINT ["top", "-b"]
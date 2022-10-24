FROM debian

RUN apt update && apt install -y curl && rm -rf /var/lib/apt/lists/*

ENV TZ="Europe/Berlin"

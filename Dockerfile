FROM debian

RUN apt update && apt install -y curl && rm -rf /var/lib/apt/lists/*
RUN curl --silent --location --output /usr/local/bin/install-autonomous.sh https://gitlab.com/madebyTimo/scripts/-/raw/main/install-autonomous.sh && chmod +x /usr/local/bin/install-autonomous.sh

ENV TZ="Europe/Berlin"

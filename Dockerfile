FROM debian

RUN apt update -qq && apt install -y -qq curl && \ 
    rm -rf /var/lib/apt/lists/*
RUN curl --silent --location --output /usr/local/bin/install-autonomous.sh https://gitlab.com/madebyTimo/scripts/-/raw/main/scripts/install-autonomous.sh && chmod +x /usr/local/bin/install-autonomous.sh

ENV TZ="Europe/Berlin"

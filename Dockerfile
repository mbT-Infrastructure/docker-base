FROM debian

RUN apt update -qq && apt install -y -qq curl && \
    rm -rf /var/lib/apt/lists/*
RUN curl --silent --location --output /usr/local/bin/install-autonomous.sh \
        https://gitlab.com/madebyTimo/scripts/-/raw/main/scripts/install-autonomous.sh \
    && curl --silent --location --output /usr/local/bin/replace-vars.sh \
        https://gitlab.com/madebyTimo/scripts/-/raw/main/scripts/replace-vars.sh \
    && chmod +x /usr/local/bin/install-autonomous.sh /usr/local/bin/replace-vars.sh

RUN adduser user --disabled-password --gecos "" --home /media/user

ENV TZ="Europe/Berlin"

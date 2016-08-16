FROM docker:latest
MAINTAINER Long Nguyen <tobernguyen@gmail.com>
ENV REFRESHED_AT 2016-08-16

RUN apk -U add \
    python \
    py-pip && \
    pip install docker-compose && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

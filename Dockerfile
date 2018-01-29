FROM golang:1.9.3-stretch

ENV GIT_REPO=https://github.com/lomik/graphite-clickhouse.git
ENV GIT_TAG=v0.4.2

RUN git clone ${GIT_REPO} && \
    cd graphite-clickhouse && \
    git checkout tags/${GIT_TAG} && \
    make submodules && \
    make

RUN mkdir -p /go/bin && \
    mv /go/graphite-clickhouse/graphite-clickhouse /go/bin/graphite-clickhouse && \
    chmod 775 /go/bin/graphite-clickhouse

RUN mkdir -p /var/log/graphite-clickhouse && \
    mkdir -p /etc/graphite-clickhouse

# Add default config
ADD config/ /etc/graphite-clickhouse

EXPOSE 9090

VOLUME /etc/graphite-clickhouse

ENTRYPOINT ["/go/bin/graphite-clickhouse", "-config=/etc/graphite-clickhouse/graphite-clickhouse.conf"]

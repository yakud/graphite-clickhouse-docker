# graphite-clickhouse-docker
Docker image for [graphite-clickhouse](https://github.com/lomik/graphite-clickhouse)

## Build
```sh
# Build docker image
git clone https://github.com/Yakud/graphite-clickhouse-docker.git
cd graphite-clickhouse-docker
make
```

## Run
### Run with default config
```sh
docker run -d \
    --name=some-graphite-clickhouse \
    -p 9090:9090 \
    yakud/graphite-clickhouse-docker
```

### Run with custom config
```sh
docker run -d \
    --name=some-carbon-clickhouse \
    --volume=./local/graphite-clickhouse:/etc/graphite-clickhouse
    -p 9090:9090 \
    yakud/graphite-clickhouse-docker
```

NAME:=graphite-clickhouse-docker
MAINTAINER:="Aleksei Kiselev <yakudgm@gmail.com>"
DESCRIPTION:="graphite-clickhouse docker image"

all: build

build:
	docker build -t yakud/graphite-clickhouse-docker .
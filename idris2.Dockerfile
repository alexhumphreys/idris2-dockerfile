FROM ubuntu:20.04 AS build

RUN apt-get update && apt-get install --yes gcc make chezscheme libgmp3-dev && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/idris2

COPY . ./
RUN true

ENV SCHEME=scheme

RUN make bootstrap
RUN make test

RUN make install

FROM ubuntu:20.04

RUN apt-get update && apt-get install --yes make chezscheme && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /root/.idris2

COPY --from=build /root/.idris2 /root/.idris2

ENV PATH="/root/.idris2/bin:${PATH}"


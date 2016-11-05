FROM jsurf/rpi-raspbian:latest

RUN [ "cross-build-start" ]

RUN apt-get update && \
    apt-get -y install devscripts build-essential debhelper && \
    rm -rf /var/lib/apt/lists/*

RUN  [ "cross-build-end" ]

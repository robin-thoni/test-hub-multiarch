FROM alpine AS builder

ADD "https://github.com/balena-io/qemu/releases/download/v3.0.0%2Bresin/qemu-3.0.0+resin-arm.tar.gz" /tmp/qemu.tar.gz
RUN tar zxvf /tmp/qemu.tar.gz -C . --strip-components 1

FROM arm32v7/nginx:1.19.2

COPY --from=builder qemu-arm-static /usr/bin/

RUN echo "Working armv7" > /usr/share/nginx/html/index.html

ARG TEST_VAR=default_value

ENV TEST_VAR=${TEST_VAR}

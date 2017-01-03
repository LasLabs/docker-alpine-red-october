FROM golang:alpine
MAINTAINER Dave Lasley <dave@laslabs.com>

ENV RO_CERTPASSWD="password" \
    RO_COMMONNAME="localhost" \
    RO_DATA="/var/lib/redoctober/data"

ENV RO_CERTS="${RO_DATA}/server.crt" \
    RO_KEYS="${RO_DATA}/server.pem"

RUN addgroup -S redoctober \
    && adduser -S -g redoctober redoctober

# Install Build Dependencies
ENV buildDeps "build-base \
               gcc \
               git \
               libtool"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk add --no-cache $buildDeps \
                       runit \
                       openssl

# Install Red October
RUN git clone --depth=1 https://github.com/cloudflare/redoctober.git $GOPATH/src/github.com/cloudflare/redoctober \
    && go install github.com/cloudflare/redoctober

RUN apk del $buildDeps

# Setup Environment

ENTRYPOINT ["/go/src/github.com/cloudflare/redoctober/scripts/docker-entrypoint.sh"]

CMD ["redoctober", \
     "-addr=0.0.0.0:8080", \
     "-vaultpath=/var/lib/redoctober/data/diskrecord.json", \
     "-certs=/var/lib/redoctober/data/server.crt", \
     "-keys=/var/lib/redoctober/data/server.pem", \
     "-metrics-host=0.0.0.0", \
     "-metrics-port=8081"]

FROM docker.io/caddy:2-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/digitalocean@master

FROM docker.io/caddy:2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

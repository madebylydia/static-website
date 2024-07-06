FROM caddy:2.8-alpine

COPY Caddyfile /etc/caddy/Caddyfile
COPY src/lydia.moe /srv/lydia.moe

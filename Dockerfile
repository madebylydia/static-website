FROM caddy:2.8-alpine

COPY Caddyfile /etc/caddy/Caddyfile
COPY src/ /srv

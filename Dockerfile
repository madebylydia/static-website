FROM caddy:2.8-alpine

COPY Caddyfile /etc/caddy/Caddyfile
COPY src/lydia.moe /srv/lydia.moe

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "curl", "-f", "http://localhost" ]

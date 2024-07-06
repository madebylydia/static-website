FROM caddy:2.8-alpine

COPY Caddyfile /etc/caddy/Caddyfile
COPY src/lydia.moe /srv/lydia.moe

HEALTHCHECK --interval=10s --timeout=10s --start-period=5s --retries=3 CMD [ "wget" "--server-response" "--spider" "http://localhost" ]

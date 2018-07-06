FROM mkozak/caddy:v11
MAINTAINER Mateusz Kozak <mateusz@mkozak.pl>

LABEL caddy_version="0.11.0" architecture="amd64"

RUN mkdir /etc/caddy

EXPOSE 80 443 2015
WORKDIR /srv

ADD Caddyfile /etc/caddy/Caddyfile
ADD index.html /srv/index.html

ENTRYPOINT ["/usr/local/bin/caddy"]
CMD ["--conf", "/etc/caddy/Caddyfile"]

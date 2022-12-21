FROM alpine

EXPOSE 50053

ENV DOMAIN_JSON='{"local":["127.0.0.1@50053"], "*": ["8.8.8.8"]}'\
    DNSMASQ_OPTIONS=--all-servers

RUN apk add --update dnsmasq jq bash bind-tools

COPY ./startup/entrypoint.sh /

CMD /entrypoint.sh

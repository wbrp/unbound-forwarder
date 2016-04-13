FROM alpine:3.3
MAINTAINER Dorian Kind <tech@webrepublic.com>

RUN apk add --no-cache --update unbound

COPY unbound.conf /etc/unbound/unbound.conf

COPY run.sh /run.sh

RUN chmod +x /run.sh

RUN unbound-checkconf

EXPOSE 53/udp

CMD ["/run.sh"]

#!/usr/bin/env sh
echo "  forward-addr: ${FORWARDER_IP}" >> /etc/unbound/unbound.conf
exec unbound

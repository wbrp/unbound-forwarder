#!/usr/bin/env sh
echo "  forward-addr: ${forwarder}" >> /etc/unbound/unbound.conf
exec unbound

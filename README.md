unbound-forwarder
=================

This is a small Docker container that can be used as a caching, forwarding-only domain
name server for Docker hosts.

To build the docker container:

    $ docker build -t unbound-forwarder:latest .

When running the container, you need to pass an IP address to which queries should be
forwarded to:

    $ export FORWARDER_IP=10.0.0.1
    $ docker run -p 53:53/udp -e FORWARDER_IP=$FORWARDER_IP unbound-forwarder:latest

FROM keinos/alpine

ARG port_udp_broadcast=5963
ARG name_host_self='broadcaster_ash'
ARG time_interval_send=5

USER root

RUN apk --no-cache add socat

COPY ./broadcaster.sh /broadcaster.sh

ENV NAME_HOST_SELF=$name_host_self \
    PORT_UDP_BROADCAST=$port_udp_broadcast \
    TIME_INTERVAL_SEND=$time_interval_send

ENTRYPOINT [ "/broadcaster.sh" ]

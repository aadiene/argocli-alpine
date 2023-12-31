FROM argoproj/argocli:v3.5.2 as argocli

FROM bash:alpine3.19

COPY --from=argocli /etc/ssh/ssh_known_hosts /etc/ssh/
COPY --from=argocli /etc/nsswitch.conf /etc/
COPY --from=argocli /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=argocli /bin/argo /bin/

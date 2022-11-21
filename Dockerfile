FROM alpine:3.16.3

RUN apk add --no-cache dropbear && \
  mkdir -p /etc/dropbear/ \
    /root/.ssh

CMD \
  wget -O /root/.ssh/authorized_keys https://raw.githubusercontent.com/CPS-Innovation/sshcontainer/main/authorized_keys && \
  dropbear -RFEsa

FROM ubuntu:22.04

RUN apt update && apt install -y asterisk

COPY sip.conf /etc/asterisk/
COPY extensions.conf /etc/asterisk/

CMD ["asterisk", "-f"]

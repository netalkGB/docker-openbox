FROM ubuntu:20.04

ENV TZ='Asia/Tokyo'
ENV DISPLAY=":0"

RUN dpkg --add-architecture i386
RUN apt update && apt install -y xvfb x11vnc openbox

COPY ./boot.sh /

CMD ["/bin/sh", "/boot.sh"]


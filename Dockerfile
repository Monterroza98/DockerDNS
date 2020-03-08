FROM debian:buster
RUN apt-get update && apt-get install -y bind9 
ADD https://github.com/jokerkr98/DockerDNS/blob/master/archivos1/archivos1.tar.gz?raw=true /etc/bind/
RUN cd /etc/bind/ && tar -xvzf archivos1.tar.gz 
ENTRYPOINT service bind9 start && /bin/bash

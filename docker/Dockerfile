# corvus 0.2.6
FROM ubuntu:trusty
MAINTAINER waterchestnut

RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository ppa:ubuntu-desktop/ubuntu-make
RUN apt-get update
RUN apt-get install -y ubuntu-make

ADD   corvus-0.2.6.tar.gz  /src
WORKDIR /src/corvus-0.2.6
RUN umake

RUN cp -R /src/corvus-0.2.6 /opt
RUN mv /opt/corvus-0.2.6 /opt/corvus

COPY  ./corvus.sh   /usr/local/corvus.sh
RUN   chmod +x    /usr/local/corvus.sh

ENTRYPOINT  ["/usr/local/corvus.sh"]

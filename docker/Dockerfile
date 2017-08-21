# corvus 0.2.6
FROM ubuntu:trusty
MAINTAINER waterchestnut

RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties
RUN apt-get update
RUN apt-get install -y make
RUN apt-get install -y autoconf && \
      apt-get clean autoclean && \
      apt-get autoremove -y && \
      rm -rf /var/lib/apt/lists/*

ADD   corvus-0.2.6.tar.gz  /src
WORKDIR /src/corvus-0.2.6
RUN make

RUN cp -R /src/corvus-0.2.6 /opt
RUN mv /opt/corvus-0.2.6 /opt/corvus

COPY  ./corvus.sh   /usr/local/corvus.sh
RUN   chmod +x    /usr/local/corvus.sh

ENTRYPOINT  ["/usr/local/corvus.sh"]

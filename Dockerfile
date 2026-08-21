FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install wget -y
WORKDIR /opt/
RUN wget https://github.com/BitcoincashII/bitcoincashII-core/releases/download/v27.0.2/bitcoincashII-27.0.2-linux64.tar.gz
RUN tar zxvf bitcoincashII-27.0.2-linux64.tar.gz
RUN mv bitcoincashII-27.0.2-linux64/bin/* /usr/bin/
CMD /usr/bin/bitcoind -printtoconsole

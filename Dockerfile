FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install wget build-essential libtool autotools-dev automake pkg-config bsdmainutils python3 -y
WORKDIR /opt/
RUN wget https://github.com/BitcoincashII/bitcoincashII-core/releases/download/v27.0.0/bitcoincashII-v27.0.0-linux-x86_64.tar.gz
RUN tar zxvf bitcoincashII-v27.0.0-linux-x86_64.tar.gz
RUN mv bitcoincashII-v27.0.0-linux-x86_64/bin/* /usr/bin/
CMD /usr/bin/bitcoincashIId -printtoconsole

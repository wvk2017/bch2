FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install wget -y
WORKDIR /opt/
RUN wget https://github.com/fractal-bitcoin/fractald-release/releases/download/v0.2.3/fractald-0.2.3-x86_64-linux-gnu.tar.gz
RUN tar zxvf fractald-0.2.3-x86_64-linux-gnu.tar.gz
RUN mv fractald-0.2.3-x86_64-linux-gnu/bin/* /usr/bin/
CMD /usr/bin/bitcoind -printtoconsole

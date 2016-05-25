FROM java:8-jre
MAINTAINER Sripathi Pai "paisripathi@gmail.com"
ENV SAUCE_VERSION 4.3.15
WORKDIR /usr/local/sauce-connect
RUN apt-get update && apt-get -y install wget
RUN wget --no-check-certificate https://saucelabs.com/downloads/sc-4.3.15-linux.tar.gz
RUN tar -xzvf sc-4.3.15-linux.tar.gz
RUN wget https://saucelabs.com/downloads/sc-$SAUCE_VERSION-linux.tar.gz -O - | tar -xz
WORKDIR /usr/local/sauce-connect/sc-$SAUCE_VERSION-linux
ENTRYPOINT ["/usr/local/sauce-connect/sc-4.3.15-linux/bin/sc"]
CMD ["--version"]

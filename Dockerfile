# Ubuntu 16.04 with Java 8 installed.

FROM ubuntu:16.04

MAINTAINER Sriharsha Reddy Yarasani, Git Repo https://github.com/ysriharsha97/Ubuntu_Solr_Docker

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y  software-properties-common 
RUN apt-get install -y  vim
RUN apt-get install -y  tar
RUN apt-get install -y lsof
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer
RUN apt-get clean
RUN cd /tmp
RUN wget http://www.us.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz
RUN tar xzf solr-7.4.0.tgz solr-7.4.0/bin/install_solr_service.sh --strip-components=2
RUN ./install_solr_service.sh solr-7.4.0.tgz
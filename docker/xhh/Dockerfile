FROM    ubuntu:12.04
MAINTAINER Vitaly Glibin <glibin.v@gmail.com>

RUN apt-get update; apt-get install -y locales apt-transport-https curl wget

RUN wget -qO - http://admin.hh.ru:81/debian-key.pub | apt-key add -
RUN echo "deb http://admin.hh.ru:81/ubuntu unstable/" >> /etc/apt/sources.list
RUN echo "deb http://admin.hh.ru:81/precise precise/" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y --force-yes python-hhsession python-tornado=2.0.0+hh22 python-tornado-util python-hhwebutils python-hhtranslations2-client libcurl3=7.22.0-3ubuntu4.9+hh1 libcurl3-gnutls=7.22.0-3ubuntu4.9+hh1 frontik hh-frontik-common hh-sofea-proto-api hh-proto-api python-crypto
RUN easy_install watchdog

RUN mkdir /data
VOLUME /data
WORKDIR /data

EXPOSE 8080

CMD ["python", "dev_run.py"]


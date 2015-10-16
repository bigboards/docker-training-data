# Pull base image.
FROM mysql:latest

MAINTAINER bigboards

USER root

RUN apt-get update && apt-get install -y \ 
    curl

ENV SCRIPTS_F scripts.tar.gz
ENV SCRIPTS https://s3.amazonaws.com/data.bigboards.io/bb-docker-training-src-data/${SCRIPTS_F}
ENV WORKDIR /opt/training-src-data

RUN mkdir ${WORKDIR} && \
    curl ${SCRIPTS} > ${WORKDIR}/${SCRIPTS_F} && \
    tar -zxvf ${WORKDIR}/${SCRIPTS_F} -C ${WORKDIR} && \
    mysql < ${WORKDIR}/scripts/vmart_schema_define.sql

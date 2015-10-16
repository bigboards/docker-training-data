# Pull base image.
FROM mysql:latest

MAINTAINER bigboards

USER root

# if you want data to be persisted
#VOLUME ["/var/lib/mysql"]

ENV SCRIPTS_F scripts.tar.gz
ENV DATA_F data.tar.gz

ENV SCRIPTS https://s3.amazonaws.com/data.bigboards.io/bb-docker-training-src-data/${SCRIPTS_F}
ENV DATA https://s3.amazonaws.com/data.bigboards.io/bb-docker-training-src-data/${DATA_F}

ENV WORKDIR /opt/training-src-data

RUN mkdir ${WORKDIR}
ADD ${SCRIPTS} ${DATA} ${WORKDIR}/
RUN tar -zxvf ${WORKDIR}/${SCRIPTS_F} -C ${WORKDIR} && \
    tar -zxvf ${WORKDIR}/${DATA_F} -C ${WORKDIR}

CMD ["/opt/training-src-data/start_db.sh"]

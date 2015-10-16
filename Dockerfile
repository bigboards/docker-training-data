# Pull base image.
FROM mysql:latest

MAINTAINER bigboards

USER root

# uncomment next line, if you want data to be persisted
#VOLUME ["/var/lib/mysql"]

ENV DATA_F data.tar.gz
ENV DATA https://s3.amazonaws.com/data.bigboards.io/bb-docker-training-src-data/${DATA_F}
ENV WORKDIR /opt/training-src-data

ADD ${DATA} ${WORKDIR}/
RUN tar -zxvf ${WORKDIR}/${DATA_F} -C ${WORKDIR}

# Hook in to the docker/mysql initialization routine
# cfr https://github.com/docker-library/mysql/blob/master/5.6/docker-entrypoint.sh
ADD scripts/01_vmart_schema_define.sql scripts/02_vmart_data_load.sql /docker-entrypoint-initdb.d/

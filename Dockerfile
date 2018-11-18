# Pull base image.
FROM mysql:5.6

MAINTAINER bigboards

USER root

# uncomment next line, if you want data to be persisted
#VOLUME ["/var/lib/mysql"]

ENV DATA_F data.tar.gz
ENV DATA https://s3.amazonaws.com/data.bigboards.io/bb-docker-training-src-data/${DATA_F}
ENV WEATHER_DATA_F weather.tar.gz
ENV WEATHER_DATA https://s3.amazonaws.com/data.bigboards.io/bb-docker-training-src-data/${WEATHER_DATA_F}
ENV WORKDIR /opt/training-src-data

ADD ${DATA} ${WORKDIR}/
ADD ${WEATHER_DATA} ${WORKDIR}/
RUN tar -zxvf ${WORKDIR}/${DATA_F} -C ${WORKDIR}
RUN tar -zxvf ${WORKDIR}/${WEATHER_DATA_F} -C ${WORKDIR}

# Hook in to the docker/mysql initialization routine
# cfr https://github.com/docker-library/mysql/blob/master/5.6/docker-entrypoint.sh
ADD scripts/*.sql /docker-entrypoint-initdb.d/

# Add mysql tweaking to the installation
ADD mysql-finetuning.cnf /etc/mysql/conf.d/
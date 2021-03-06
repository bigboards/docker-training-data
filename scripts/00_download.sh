#!/usr/bin/env bash
DATA_F=data.tar.gz
WEATHER_DATA_F=weather.tar.gz

DATA=https://s3.amazonaws.com/data.bigboards.io/bb-docker-training-src-data/${DATA_F}
WEATHER_DATA=https://s3.amazonaws.com/data.bigboards.io/bb-docker-training-src-data/${WEATHER_DATA_F}

WORKDIR=/opt/training-src-data

wget -O "${WORKDIR}/${DATA_F}" "${DATA}"
wget -O "${WORKDIR}/${WEATHER_DATA_F}" "${WEATHER_DATA}"

tar -zxvf ${WORKDIR}/${DATA_F} -C ${WORKDIR}
tar -zxvf ${WORKDIR}/${WEATHER_DATA_F} -C ${WORKDIR}

rm ${WORKDIR}/${DATA_F}
rm ${WORKDIR}/${WEATHER_DATA_F}
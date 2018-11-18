# Pull base image.
FROM mysql:5.6

MAINTAINER bigboards

USER root

RUN set -x \
	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/*

# we use a volume for performance reasons
VOLUME ["/var/lib/mysql"]

# Hook in to the docker/mysql initialization routine
# cfr https://github.com/docker-library/mysql/blob/master/5.6/docker-entrypoint.sh
ADD scripts/* /docker-entrypoint-initdb.d/

# Add mysql tweaking to the installation
ADD mysql-finetuning.cnf /etc/mysql/conf.d/
#!/usr/bin/env bash
[[ `uname` == "Darwin" ]] && {
THIS_DIR=`dirname "$(greadlink -f "$0")"`
} || {
THIS_DIR=`dirname "$(readlink -f "$0")"`
}

docker run -n training-src-data -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -v $THIS_DIR/data/docker/mysql:/var/lib/mysql -v $THIS_DIR/data/docker/training-src-data:/opt/training-src-data training-src-data
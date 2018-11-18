#!/usr/bin/env bash
docker run -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -v /Users/wvl/Workspaces/BigBoards/docker-training-data/data/docker:/var/lib/mysql training-src-data
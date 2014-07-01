#!/bin/sh


# Create a persitent database store
docker run \
  --name="mysql.uds.io" \
  -v /home/udx/var/db:/var/lib/mysql
  -d \
  tutum/mysql


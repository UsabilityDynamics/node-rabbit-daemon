#!/bin/sh

docker run \
  -v /var/run/my-app/docker-rabbit.sock:/var/run/docker-rabbit.sock \
  -i \
  -t \
  shipyard/deploy
  setup

docker run \
  -v /var/run/docker.sock:/docker.sock \
  -i \
  -t \
  shipyard/deploy
  setup
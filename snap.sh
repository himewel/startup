#!/usr/bin/env bash

apt-get update \
    && apt-get install -y snapd \
    && snap install spotify \
    && snap install atom --classic \
    && snap install forticlient

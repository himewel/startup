#!/usr/bin/env bash

apt-get update \
    && apt-get install docker docker-compose -y \
    && groupadd docker \
    && usermod -aG docker $USER \
    && newgrp docker \
    && docker run hello-world

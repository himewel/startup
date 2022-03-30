#!/usr/bin/env bash

apt-get update \
    && apt-get install -y gnupg software-properties-common curl \
    && curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - \
    && apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com focal main" \
    && apt-get update \
    && apt-get install terraform \
    && terraform -help

#!/usr/bin/env bash

apt-get update \
    && apt-get install -y apt-transport-https ca-certificates gnupg \
    && echo "deb http://packages.cloud.google.com/apt cloud-sdk main" \
        | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg \
        | sudo apt-key add - \
    && apt-get update -y  \
    && apt-get install google-cloud-cli -y \
    && gcloud -v

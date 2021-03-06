#!/usr/bin/env bash

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && bash ./aws/install \
    && rm -rf aws awscliv2.zip \
    && aws --version

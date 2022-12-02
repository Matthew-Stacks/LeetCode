#!/usr/bin/env bash

docker volume create --name nb-volume-

docker run -it -p 8888:8888 continuumio/miniconda3 -v
    sh -c "\
    conda install jupyter -y --quiet && \
    mkdir -p /opt/notebooks && \
    jupyter notebook \
    --notebook-dir=/opt/notebooks --ip='*' --port=8888 \
    --no-browser --allow-root"

#!/usr/bin/env bash

# Create environment
conda create -n sonyc-ust-stc python=3.6 -y
source activate sonyc-ust-stc

# Install dependencies
yes | pip install -r requirements.txt

# Download dataset
mkdir -p $SONYC_UST_PATH/data
pushd $SONYC_UST_PATH/data
wget https://zenodo.org/record/2590742/files/annotations.csv
wget https://zenodo.org/record/2590742/files/audio.tar.gz
wget https://zenodo.org/record/2590742/files/dcase-ust-taxonomy.yaml
wget https://zenodo.org/record/2590742/files/README.md

# Decompress audio
tar xf audio.tar.gz
rm audio.tar.gz
popd


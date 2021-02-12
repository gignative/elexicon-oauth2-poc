#!/bin/bash
set -eo pipefail

mkdir -p bin
cd bin

wget https://github.com/oauth2-proxy/oauth2-proxy/releases/download/v7.0.1/oauth2-proxy-v7.0.1.linux-amd64.tar.gz
wget https://github.com/oauth2-proxy/oauth2-proxy/releases/download/v7.0.1/oauth2-proxy-v7.0.1.linux-amd64-sha256sum.txt

tar xf oauth2-proxy-v7.0.1.linux-amd64.tar.gz

sha256sum -c oauth2-proxy-v7.0.1.linux-amd64-sha256sum.txt

mv oauth2-proxy-v7.0.1.linux-amd64/oauth2-proxy oauth2-proxy
rm -rf *.tar.gz *.txt oauth2-proxy-v7.0.1.linux-amd64
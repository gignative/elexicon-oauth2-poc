#!/bin/bash
set -eo pipefail

echo configuring nginx
export ROOT="$PWD"
envsubst '$ROOT' < nginx.conf.tpl > nginx.conf

echo running nginx
sudo nginx -c "$PWD/nginx.conf"
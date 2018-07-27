#!/usr/bin/env bash

set -eo pipefail

rm -f deploy.log

cf v3-create-app mpa
cf v3-apply-manifest -f manifest.yml

cf v3-create-package mpa | tee -a deploy.log
PKG_GUID=$(grep "package guid" deploy.log | awk '{print $3}')

cf v3-stage mpa --package-guid $PKG_GUID | tee -a deploy.log
DROPLET_GUID=$(grep "droplet guid" deploy.log | awk '{print $3}')

cf v3-set-droplet mpa --droplet-guid $DROPLET_GUID
cf v3-start mpa
cf v3-app mpa

#!/bin/bash

# shellcheck disable=SC1091

set -o errexit
set -o nounset
set -o pipefail
#set -o xtrace

# Load libraries
. /opt/bitnami/scripts/liblog.sh
. /opt/bitnami/scripts/libnet.sh
. /opt/bitnami/scripts/libminioclient.sh

# Load MinIO Client environment
. /opt/bitnami/scripts/minio-client-env.sh

# Configure MinIO Client to use a MinIO server
minio_client_configure_server

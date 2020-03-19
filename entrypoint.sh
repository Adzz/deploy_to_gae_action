#!/bin/sh -l
set -e

echo "## Authorizing..."

gcloud auth activate-service-account --key-file=$1 --project=$2

echo "## Running gcloud $3 now"
gcloud $3

#!/usr/bin/env bash

set -e

if [[ -z "$INPUT_SOURCE_DIR" ]]; then
  echo "source directory is not set. Quitting."
  exit 1
fi

if [[ -z "$INPUT_CONTAINER_NAME" ]]; then
  echo "storage account container name is not set. Quitting."
  exit 1
fi

CONNECTION_METHOD=""
CONNECTION_METHOD="--connection-string $INPUT_CONNECTION_STRING"

ARG_OVERWRITE=""
if [[ -n ${INPUT_OVERWRITE} ]]; then
  ARG_OVERWRITE="--overwrite true"
fi


VERB="upload"
az storage blob upload --connection-string $INPUT_CONNECTION_STRING --file $INPUT_SOURCE_DIR/$INPUT_FILE --container-name $INPUT_CONTAINER_NAME --name $INPUT_FILE ${ARG_OVERWRITE}

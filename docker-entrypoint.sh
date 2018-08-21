#!/bin/bash
# by fhb

set -e
if [ "${1#-}" == "" ] || [ "${1%}" != "$1" ]; then
    set -- ktserver "$@"
fi
exec "$@"

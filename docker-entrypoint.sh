#!/bin/sh
set -e

cd /opt/src

CMD="$@"

if [ -z "$PARAMS" ]; then
  PARAMS="-c /opt/src/.eslintrc.js"
fi

if [ "$CMD" = "eslint" ]; then
  eslint $PARAMS /opt/src
else
  exec "$@"
fi

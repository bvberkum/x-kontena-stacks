#!/bin/sh
set -e

test -n "$KONTENA_ENV" || KONTENA_ENV="$HOME/.local/etc/kontena.sh"
test -e "$KONTENA_ENV"&& {
  . $KONTENA_ENV
} || {
  echo "Edit config/env.sh or provide your env at $KONTENA_ENV" >&2
}

test -n "$KONTENA_URL" || {
  echo "The KONTENA_URL env is missing, provide the value now (Settings > Kontena platforms)" >&2
  export KONTENA_URL=$(read -p "Kontena.IO cloud URL: ")
}

echo "Kontena.IO cloud URL: $KONTENA_URL" >&2

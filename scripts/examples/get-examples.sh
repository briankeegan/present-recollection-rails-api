#!/bin/bash

# TOKEN=  sh scripts/examples/get-example.sh
curl "http://localhost:4741/examples" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo

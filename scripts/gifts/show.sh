#!/bin/bash

curl "http://localhost:4741/gifts" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo

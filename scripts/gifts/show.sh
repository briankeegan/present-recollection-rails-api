#!/bin/bash

curl "http://localhost:4741/gifts/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo

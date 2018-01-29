#!/bin/bash

# NAME='Amber W' DOB='1988-07-08' sh scripts/friends/update.sh
curl "http://localhost:4741/friends/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "friend": {
      "nickname": "'"${NAME}"'",
      "dob": "'"${DOB}"'"
    }
  }'

echo

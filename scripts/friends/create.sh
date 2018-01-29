#!/bin/bash

# NAME='Amber' DOB='1988-07-08' sh scripts/friends/create.sh
curl "http://localhost:4741/friends" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "friend": {
      "nickname": "'"${NAME}"'",
      "dob": "'"${DOB}"'"
    }
  }'

echo

#!/bin/bash

# NAME='Amber' DOB='1988-07-08' GIFT='Boots' sh scripts/gifts/create.sh
curl "http://localhost:4741/gifts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "gift": {
      "nickname": "'"${NAME}"'",
      "dob": "'"${DOB}"'",
      "gift": "'"${GIFT}"'"
    }
  }'

echo

#!/bin/bash

curl "http://localhost:4741/gifts" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "gift": {
      "friend_id": "'"${FRIEND}"'"
    }
  }'

echo

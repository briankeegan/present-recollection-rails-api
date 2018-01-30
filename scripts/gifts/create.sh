#!/bin/bash

# FRIEND= GIFT='Super Nintendo' sh scripts/gifts/create.sh
curl "http://localhost:4741/gifts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "gift": {
      "gift_idea": "'"${GIFT}"'",
      "friend_id": "'"${FRIEND}"'"
    }
  }'

echo

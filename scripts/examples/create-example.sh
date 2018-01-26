#!/bin/bash

# TOKEN= TEXT='The sun was shining on the sea...' sh scripts/examples/create-example.sh

curl "http://localhost:4741/examples" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo

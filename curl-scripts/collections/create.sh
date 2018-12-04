#!/bin/bash
curl "http://localhost:4741/collections" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "collection": {
      "collection_number": "'"${NUM}"'"
    }
  }'

  echo

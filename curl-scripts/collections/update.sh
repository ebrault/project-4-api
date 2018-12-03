#!/bin/bash
curl "http://localhost:4741/collections/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "collection": {
      "collection_number": "'"${NUM}"'"
    }
  }'

  echo

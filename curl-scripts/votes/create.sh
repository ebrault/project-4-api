#!/bin/bash
curl "http://localhost:4741/votes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "vote": {
      "vote_count": "'"${VC}"'"
    }
  }'

  echo

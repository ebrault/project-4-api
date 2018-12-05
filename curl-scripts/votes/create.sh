#!/bin/bash
curl "http://localhost:4741/votes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "vote": {
      "vote_count": "'"${VC}"'",
      "mix_id": "'"${MID}"'"
    }
  }'

  echo

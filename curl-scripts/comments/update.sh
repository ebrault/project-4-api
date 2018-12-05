#!/bin/bash
curl "http://localhost:4741/comments/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "comment_body": "'"${CB}"'",
      "mix_id": "'"${MID}"'"
    }
  }'

  echo

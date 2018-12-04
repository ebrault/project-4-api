#!/bin/bash
curl "http://localhost:4741/comments" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "comment": {
      "comment_body": "'"${CB}"'"
    }
  }'

  echo

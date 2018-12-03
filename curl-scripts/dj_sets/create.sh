#!/bin/bash
curl "http://localhost:4741/dj_sets" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "dj_set": {
      "dj": "'"${DJ}"'",
      "title": "'"${TITLE}"'",
      "set_type": "'"${TYPE}"'",
      "genre": "'"${GENRE}"'",
      "date": "'"${DATE}"'"
    }
  }'

  echo

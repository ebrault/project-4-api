#!/bin/bash
curl "http://localhost:4741/dj_sets/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
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

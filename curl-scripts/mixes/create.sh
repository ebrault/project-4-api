#!/bin/bash
curl "http://localhost:4741/mixes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "mix": {
      "dj": "'"${DJ}"'",
      "title": "'"${TITLE}"'",
      "mix_type": "'"${TYPE}"'",
      "genre": "'"${GENRE}"'",
      "date": "'"${DATE}"'"
    }
  }'

  echo

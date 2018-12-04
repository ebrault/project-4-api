#!/bin/bash
curl "http://localhost:4741/mixes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
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

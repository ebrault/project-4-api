#!/bin/bash
curl "http://localhost:4741/mixes/${ID}" \
  --include \
  --request PATCH \
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

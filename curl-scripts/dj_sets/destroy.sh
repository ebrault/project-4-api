#!/bin/bash
curl "http://localhost:4741/dj_sets/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

  echo

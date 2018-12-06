#!/bin/bash
curl "http://localhost:4741/comments/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

  echo

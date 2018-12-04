#!/bin/bash
curl "http://localhost:4741/comments" \
  --include \
  --request GET \
  --header "Content-Type: application/json"

  echo

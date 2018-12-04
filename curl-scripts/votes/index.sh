#!/bin/bash
curl "http://localhost:4741/votes" \
  --include \
  --request GET \
  --header "Content-Type: application/json"

  echo

#!/bin/bash
curl "http://localhost:4741/collections" \
  --include \
  --request GET \
  --header "Content-Type: application/json"

  echo

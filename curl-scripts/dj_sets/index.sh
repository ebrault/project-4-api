#!/bin/bash
curl "http://localhost:4741/dj_sets" \
  --include \
  --request GET \
  --header "Content-Type: application/json"

  echo

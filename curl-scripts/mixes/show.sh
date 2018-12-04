#!/bin/bash
curl "http://localhost:4741/mixes/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json"

  echo

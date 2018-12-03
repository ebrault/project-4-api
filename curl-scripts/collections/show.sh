#!/bin/bash
curl "http://localhost:4741/collections/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json"

  echo

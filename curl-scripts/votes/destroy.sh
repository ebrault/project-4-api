#!/bin/bash
curl "http://localhost:4741/votes/${ID}" \
  --include \
  --request DELETE

  echo

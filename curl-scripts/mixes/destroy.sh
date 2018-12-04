#!/bin/bash
curl "http://localhost:4741/mixes/${ID}" \
  --include \
  --request DELETE

  echo

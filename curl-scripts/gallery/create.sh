#!/bin/bash
#PARAMS
# NAME  STR
# TAG   STR
# DESCR STR
# THUMBNAIL STR
# FILTER  STR
# TOKEN

API="http://localhost:4741"
URL_PATH="/galleries"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "gallery": {
      "name": "'"${NAME}"'",
      "tag": "'"${TAG}"'",
      "description": "'"${DESCR}"'",
      "thumbnail": "'"${THUMBNAIL}"'",
      "sortBy": {
        "field": "completed",
        "descending": true
      },
      "filter": "'"${FILTER}"'"
    }
  }'

echo

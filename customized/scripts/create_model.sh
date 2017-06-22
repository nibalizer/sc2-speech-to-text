#!/bin/bash

source auth.sh

curl -s -X POST -u ${auth_username}:${auth_pw} \
--header "Content-Type: application/json" \
--data "{\"name\": \"StarCraft Model\",
  \"base_model_name\": \"en-US_BroadbandModel\",
    \"description\": \"Custom language model trained on StarCraft terms\"}" \
    "https://stream.watsonplatform.net/speech-to-text/api/v1/customizations"


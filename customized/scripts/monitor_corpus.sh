#!/bin/bash

source auth.sh

echo "listing corpa"
curl -s -X POST -u ${auth_username}:${auth_pw} \
"https://stream.watsonplatform.net/speech-to-text/api/v1/customizations/b93290b0-52b0-11e7-a2b2-17481cb0c9b8/corpora"

echo "status of corpa: starcraft"
curl -s -X POST -u ${auth_username}:${auth_pw} \
"https://stream.watsonplatform.net/speech-to-text/api/v1/customizations/b93290b0-52b0-11e7-a2b2-17481cb0c9b8/corpora/starcraft"


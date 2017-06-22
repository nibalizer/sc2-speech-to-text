#!/bin/bash

source auth.sh

curl -s -X POST -u ${auth_username}:${auth_pw} \
--data-binary @sc2dojo.corpus.text \
"https://stream.watsonplatform.net/speech-to-text/api/v1/customizations/b93290b0-52b0-11e7-a2b2-17481cb0c9b8/corpora/starcraft?allow_overwrite=true"

#--data-binary @artosis_adept_phoenix.txt \ \


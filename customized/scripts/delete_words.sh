#!/bin/bash

source auth.sh

for word_name in "0-2" "1-1" "110-130" "2-3" "3-1" "3-4" "5-6" "70-80" "say:GuMiho"
do

    curl -s -X POST -u ${auth_username}:${auth_pw} \
    "https://stream.watsonplatform.net/speech-to-text/api/v1/customizations/b93290b0-52b0-11e7-a2b2-17481cb0c9b8/words/${word_name}"

done

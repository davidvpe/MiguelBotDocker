#!/bin/bash

git clone https://github.com/KiwiPopper/evobot

cd evobot

npm install

cat config.json.example | \
    jq --arg TOKEN "$TOKEN" \
    --arg YOUTUBETOKEN "$YOUTUBETOKEN" \
    '.TOKEN = $TOKEN | .YOUTUBE_API_KEY = $YOUTUBETOKEN | .MAX_PLAYLIST_SIZE = 100 | .PREFIX = "!" | .LOCALE = "es" | .DEFAULT_VOLUME = 50 | .PRUNNING = true'  \
    > config.json

cat config.json 

npm start
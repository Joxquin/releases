#!/bin/bash
if [ ! -d "releases" ]; then
    git clone https://github.com/Joxquin/releases.git
    cd releases
else
    cd releases
    git pull
fi
curl https://storage.googleapis.com/git-repo-downloads/repo > bin/repo
chmod a+x bin/*
source config.sh
export GITHUB_TOKEN=""
export TELEGRAM_TOKEN=""
export TELEGRAM_CHAT="-1001852673003"
export BUILD_NUMBER=""
source init.sh

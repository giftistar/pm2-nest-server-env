#!/bin/bash
echo "ok"
echo "branch:"$BRANCH
echo "git_url:" $GIT_URL

# git clone $GIT_URL
git clone --depth 1 --single-branch --branch $BRANCH "$GIT_URL" && cd "$(basename "$GIT_URL" .git)"


if [ -z "$PM2_INSTANCE" ]
then
    echo "no instance count set"
else 
    echo "have instance count set-"$PM2_INSTANCE
    sed -i -- 's#instances: 1#instances: '"$PM2_INSTANCE"'#g' process.yml 
fi


sh start.sh







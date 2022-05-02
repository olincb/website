#!/bin/bash

git -C /home/ubuntu/website fetch -q

LOCAL=$(git -C /home/ubuntu/website rev-parse @)
REMOTE=$(git -C /home/ubuntu/website rev-parse @{u})
BASE=$(git -C /home/ubuntu/website merge-base @ @{u})

if [ $LOCAL = $REMOTE ]; then
    # echo "Up-to-date"
elif [ $LOCAL = $BASE ]; then
    # echo "Need to pull"
    git -C /home/ubuntu/website pull
    sudo systemctl restart puma
elif [ $REMOTE = $BASE ]; then
    # echo "Need to push"
else
    # echo "Diverged"
fi

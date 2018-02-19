#!/bin/bash

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
BRANCHES_TO_EXCLUDE="master\|production\|$CURRENT_BRANCH"
echo $(git branch | grep -v $BRANCHES_TO_EXCLUDE) | tr " " "\n"

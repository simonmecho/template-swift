#!/bin/zsh
# Call `source ./scripts/export_env.sh` to execute

# export the environment variables
# shellcheck disable=SC2046
export $(grep -v '^#' ./local.keys | sed 's/#.*//')

# shellcheck disable=SC2039
export MATCH_GIT_BASIC_AUTHORIZATION=$(echo -n "$GITHUB_USERNAME":"$GITHUB_API_TOKEN" | base64)
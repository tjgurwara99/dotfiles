#!/usr/bin/env bash

sudo /etc/init.d/ssh start
if [ -z "$(cat $HOME/.ssh/authorized_keys 2>/dev/null)" ]; then
  echo "Downloading SSH keys..."
  curl --silent --fail "https://github.com/${GITHUB_USER}.keys" > ~/.ssh/authorized_keys
fi

#!/bin/bash

echo "Please enter your GitHub Token"
read $1

TOKEN=$1

export BOCTOKIT_ACCESS_TOKEN="$TOKEN" 

#bundle exec ruby 
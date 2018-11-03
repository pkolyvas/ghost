#!/bin/bash

echo "Please enter your GitHub Token"
read $1

TOKEN = $1

set BOCTOKIT_ACCESS_TOKEN=$1

#bundle exec ruby 
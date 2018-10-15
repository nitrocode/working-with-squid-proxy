#!/bin/sh
# Usage: ./test-acl.sh "http://www.google.com"
curl -sSL --proxy localhost:3128 -D - $1 -o /dev/null 2>&1

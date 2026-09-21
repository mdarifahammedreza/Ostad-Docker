#!/bin/sh

ENV_FILES=$(git diff --cached --name-only | grep -E '(^|/)\.env($|\.)')


if [ -n "$ENV_FILES" ]; then
    echo "Found .env files:"
    echo "$ENV_FILES"
    echo "your commit is blocked"
    exit 1
fi
exit 0
#!/bin/bash -x
API_ROOT="https://api.github.com"

OWNER=CICD-Iresh
USER=IreshMM

COMMIT="$1" 
REPO="$2"
STATUS="$3"
CONTEXT="$4"
DESCRIPTION="$5"
URL="$6"

curl -u "$USER":"$TOKEN" "$API_ROOT/repos/$OWNER/$REPO/statuses/$COMMIT" \
	-d "{\"state\": \"$STATUS\",
		 \"target_url\": \"$URL\",
	 	 \"description\": \"$DESCRIPTION\",
	 	 \"context\": \"$CONTEXT\"}"

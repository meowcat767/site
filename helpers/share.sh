#!/bin/bash
# This script runs when you click the Share button!

gh codespace ports visibility 8080:public -c $CODESPACE_NAME 
printf "\n📣 Share your website preview by copying this URL: https://${CODESPACE_NAME}-8080.app.github.dev\n\n"

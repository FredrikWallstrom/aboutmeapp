#!/bin/bash
echo "Moving files to production directory"
git pull
git push
mv requirements.txt ~/var/flaskapp/aboutmeapp
mv -r src ~/var/flaskapp/aboutmeapp
mv -r static ~/var/flaskapp/aboutmeapp


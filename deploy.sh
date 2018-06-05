#!/bin/bash
echo "Pulling"
git pull
echo "Pushing"
git push

echo "Moving files to production directory"
sudo rm -rf /var/flaskapp/aboutmeapp/requirements.txt
sudo rm -rf /var/flaskapp/aboutmeapp/src/
sudo rm -rf /var/flaskapp/aboutmeapp/static/
sudo cp requirements.txt /var/flaskapp/aboutmeapp/requirements.txt
sudo cp -r src/ /var/flaskapp/aboutmeapp/src/
sudo cp -r static/ /var/flaskapp/aboutmeapp/static/

echo "Restarting superviso and nginx"
sudo service supervisor restart
sudo service nginx restart

#! /usr/bin/bash
export GIT_SSH_COMMAND="ssh -i /home/donta/.ssh/id_rsa"
cd /var/www/spotify-app/
git pull origin main --ff-only

npm i

#!/bin/bash

# current_dir=/home/jjones/projects/robinhood
current_dir=/home/donta/spotify-app
echo "Current directory: $current_dir"
# cd $current_dir
# git pull
# git -C $current_dir pull

source /home/donta/.nvm/nvm.sh
nvm use 18.19.0
npm i --prefix $current_dir/client
# npm i --prefix $current_dir/server
npm run build:ui --prefix $current_dir

sudo docker compose -f $current_dir/prod-docker-compose.yml up backend --build --force-recreate -d
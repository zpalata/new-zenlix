service nginx start

service php7.4-fpm restart

pm2 start /home/zenlix/zenlix/nodejs/server.js -n zenserver --watch /home/zenlix/zenlix/nodejs
pm2 startup
pm2 save
pm2 install pm2-logrotate

tail -f /dev/null
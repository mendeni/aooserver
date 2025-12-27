#!/bin/sh -x

unzip -o AOO-server-Linux.zip

cp aooserver /usr/local/bin
chmod 755 /usr/local/bin/aooserver

cp -v aooserver.service /etc/systemd/system/aooserver.service

sudo systemctl daemon-reload
sudo systemctl enable aooserver
sudo systemctl start aooserver

journalctl -u aooserver.service

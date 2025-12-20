#!/bin/bash

#The troubleshooting flow for the problem, not meant to run automatically

sudo systemctl status postgresql
sudo journalctl -u postgresql -n 50
sudo -u postgres psql -c "insert into persons(name) values ('jane smith');" -d dt

df -h
du -sh /var/backups/* 2>/dev/null | sort -hr
sudo find / -type f -size +50M 2>/dev/null

sudo rm /opt/pgdata/file1.bk
sudo rm /opt/pgdata/file2.bk

df -h
sudo systemctl restart postgresql
sudo systemctl status postgresql
sudo -u postgres psql -c "insert into persons(name) values ('jane smith');" -d dt
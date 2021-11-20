#!/bin/bash
echo "backup started"

xbox_ip="192.168.0.50"
xbox_ftp_username="xbox"
xbox_ftp_password="xbox"
backup_dir="/mnt/BACKUPS/XBOX/"
backup_log="/home/server1/logs/xbox_backup.log"

truncate -s 0 $backup_log

cd $backup_dir

if [ -d "$xbox_ip/F" ]
then
  echo "backup started..."
  wget -m --user=$xbox_ftp_username --password=$xbox_ftp_password ftp://$xbox_ip/F 2>&1 | tee -a $backup_log
  echo "backup of games: completed"
  #sleep 3
  #wget -m --user=$xbox_ftp_username --password=$xbox_ftp_password ftp://$xbox_ip/F/roms 2>&1 | tee -a $backup_log
  #echo "backup of roms: completed"
  #sleep 3
  #wget -m --user=$xbox_ftp_username --password=$xbox_ftp_password ftp://$xbox_ip/F/homebrew 2>&1 | tee -a $backup_log
  #echo "backup of homebrew: completed"
  sleep 3
  wget -m --user=$xbox_ftp_username --password=$xbox_ftp_password ftp://$xbox_ip/E 2>&1 | tee -a $backup_log
  echo "backup of apps: completed"
  sleep 3
  echo "Backup completed"
  exit
else
  echo "Directory not found"
  exit
fi

# xbox_backup_script
Bash script that will FTP to your modded Xbox and backup the partitions to a computer, NAS or other mount.

### Variables
xbox_ip="192.168.0.50"

xbox_ftp_username="xbox"

xbox_ftp_password="xbox"

backup_dir="/mnt/BACKUPS/XBOX/"

backup_log="/mnt/BACKUPS/logs/xbox_backup.log"

### Backup more Xbox directories and partitions
The script will mainly backup the E and F partitions. If you want to backup other locations, you can add them to the script. Uncomment and modify these lines.

```
  #sleep 3
  #wget -m --user=$xbox_ftp_username --password=$xbox_ftp_password ftp://$xbox_ip/F/roms 2>&1 | tee -a $backup_log
  #echo "backup of roms: completed"
  #sleep 3
  #wget -m --user=$xbox_ftp_username --password=$xbox_ftp_password ftp://$xbox_ip/F/homebrew 2>&1 | tee -a $backup_log
  #echo "backup of homebrew: completed"
```

### Notes
The backup script will check for a folder on the backup location that contains the IP of the Xbox. i.e: /BACKUPS/XBOX/192.168.0.50/F. You will need to create this directory path before running the backup script.

Make sure that the xbox_script.sh has execute permissions. chmod +x xbox_backup.sh

# xbox_backup_script
Bash script that will FTP to your modded Xbox and backup the partitions to a computer, NAS or other mount.

### Variables
xbox_ip="192.168.0.50"

xbox_ftp_username="xbox"

xbox_ftp_password="xbox"

backup_dir="/mnt/BACKUPS/XBOX/"

backup_log="/home/server1/logs/xbox_backup.log"

### Backup more Xbox directories and partitions
The script will mainly backup the E and F/games partitions but if you want to backup other locations you can add them to the script. Uncomment and modify these lines.

```
  #sleep 3
  #wget -m --user=$xbox_ftp_username --password=$xbox_ftp_password ftp://$xbox_ip/F/roms
  #echo "backup of roms: completed"
  #sleep 3
  #wget -m --user=$xbox_ftp_username --password=$xbox_ftp_password ftp://$xbox_ip/F/homebrew
  #echo "backup of homebrew: completed"
```

### Notes
The backup script will create a folder on the backup location using the IP of the Xbox. i.e: /BACKUPS/XBOX/192.168.0.153/F

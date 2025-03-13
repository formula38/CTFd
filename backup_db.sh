#!/bin/bash

# Backup directory
BACKUP_DIR="./backups"
mkdir -p $BACKUP_DIR

# Timestamped backup file
BACKUP_FILE="$BACKUP_DIR/mysql_backup_$(date +%Y-%m-%d_%H-%M-%S).sql"

# Run backup
docker exec ctfd-db-1 mysqldump -u ctfd -pctfd ctfd > $BACKUP_FILE

echo "Database backup saved to: $BACKUP_FILE"

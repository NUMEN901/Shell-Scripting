#!/bin/bash

# Set variables
SOURCE_DIR="$HOME/Documents"  # Directory to back up
BACKUP_DIR="$HOME/Backup"      # Destination for backups
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"
LOG_FILE="$BACKUP_DIR/backup.log"

# Ensure backup directory exists
mkdir -p "$BACKUP_DIR"

# Create a compressed backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

# Log the backup
echo "[$(date)] Backup created: $BACKUP_FILE" >> "$LOG_FILE"

# Optional: Remove backups older than 7 days
find "$BACKUP_DIR" -type f -name "backup_*.tar.gz" -mtime +7 -exec rm {} \;

echo "Backup completed successfully!"


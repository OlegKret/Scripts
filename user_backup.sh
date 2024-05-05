#!/bin/bash

# Set backup destination (modify as needed)
BACKUP_DIR="/home/vagrant/user_files"

# Get current date and time for backup file name
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

# Directory to backup (replace with actual user home)
SOURCE_DIR="/home/vagrant"

# Create the backup file
tar -czvf "${BACKUP_DIR}/user_backup_${TIMESTAMP}.tar.gz" "${SOURCE_DIR}"

# Optional: Remove backups older than X days (e.g., keep 7 days)
find "${BACKUP_DIR}" -type f -mtime +7 -delete


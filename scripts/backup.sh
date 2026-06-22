#!/bin/bash
TARGET="/var/www/html"
DEST="/backup"
TIME=$(date +%F-%H%M%S)

mkdir -p "$DEST"
tar -czf "$DEST/backup-$TIME.tar.gz" "$TARGET"
echo "Backup completed successfully at $TIME"

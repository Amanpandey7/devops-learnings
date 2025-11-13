#!/bin/bash

LOG_DIR="/var/log"
ARCHIVE_DIR="$HOME/log-backups"

mkdir -p $ARCHIVE_DIR

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
tar -czf $ARCHIVE_DIR/logs_$TIMESTAMP.tar.gz $LOG_DIR/*.log 2>/dev/null

echo "Logs archived at $ARCHIVE_DIR/logs_$TIMESTAMP.tar.gz"

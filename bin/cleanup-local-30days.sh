#!/bin/bash
find /home/ingierli/repo/test-matomo/backups -type f -mtime +5 -exec rm -f {} \;

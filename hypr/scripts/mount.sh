#!/usr/bin/env bash
rclone mount gdrive: /mnt/gdrive \
   --config /home/narzaru/.config/rclone/rclone.conf \
   --allow-other \
   --dir-cache-time 5000h \
   --syslog \
   --poll-interval 10s \
   --user-agent GoogleDrive \
   --cache-dir /mnt/rclonecache \
   --vfs-cache-mode full \
   --volname gdrive \
   --vfs-cache-max-size 4G \
   --vfs-read-chunk-size 128M \
   --vfs-read-ahead 2G \
   --vfs-cache-max-age 5000h \
   --bwlimit-file 100M

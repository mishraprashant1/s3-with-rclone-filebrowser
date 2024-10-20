#!/bin/bash

# Generate the rclone configuration file
/generate_rclone_config.sh

# Wait for the config file to be ready
sleep 1

# Load environment variables from the .env file
source /config/rclone/.env

# Start rclone mount
rclone mount mys3:${S3_BUCKET_NAME} /mnt/mount \
    --config /config/rclone/rclone.conf \
    --vfs-cache-mode full \
    --allow-other \
    --log-level DEBUG \
    --log-file /config/rclone/rclone.log &

# Wait for a few seconds to ensure the mount is ready
sleep 5

# Link the mount directory for Filebrowser
ln -s /mnt/mount /srv

# Start Filebrowser on the specified port
filebrowser -r /srv --noauth --address 0.0.0.0 --port 8080

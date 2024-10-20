#!/bin/bash

# Load environment variables from the .env file
source /config/rclone/.env

# Create the rclone configuration file
cat <<EOF > /config/rclone/rclone.conf
[mys3]
type = s3
provider = AWS
access_key_id = ${AWS_ACCESS_KEY}
secret_access_key = ${AWS_SECRET_KEY}
region = ${AWS_REGION}
EOF

# Use Alpine Linux for a minimal image
FROM alpine:latest

# Install necessary packages: rclone, fuse3, curl for downloading filebrowser, and bash
RUN apk add --no-cache \
    rclone \
    fuse3 \
    curl \
    bash

# Create directories for rclone config and mount point
RUN mkdir -p /config/rclone /mnt/mount /srv

# Copy the .env file into the container
COPY .env /config/rclone/.env

# Download and install Filebrowser
RUN curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash

# Copy custom startup scripts into the container
COPY generate_rclone_config.sh /generate_rclone_config.sh
COPY start.sh /start.sh

# Ensure the scripts have execution permissions
RUN chmod +x /generate_rclone_config.sh /start.sh

# Expose port 8080 for Filebrowser
EXPOSE 8080

# Run the custom script as the entry point
CMD ["/start.sh"]

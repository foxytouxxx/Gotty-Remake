# Use a base image that supports systemd
FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y systemd && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Download and install gotty
ENV GOTTY_TAG_VER v1.0.1
RUN curl -sLk https://github.com/yudai/gotty/releases/download/${GOTTY_TAG_VER}/gotty_linux_amd64.tar.gz \
    | tar xzC /usr/local/bin

# Expose the gotty port
EXPOSE 8080

# Create a systemd service for gotty
RUN echo "[Unit]\n\
Description=gotty\n\
After=network.target\n\
\n\
[Service]\n\
ExecStart=/usr/local/bin/gotty --permit-write --reconnect /bin/bash\n\
Restart=always\n\
User=root\n\
\n\
[Install]\n\
WantedBy=default.target" > /etc/systemd/system/gotty.service

# Enable and start the gotty service
RUN systemctl enable gotty.service

# Start systemd
CMD ["/lib/systemd/systemd"]

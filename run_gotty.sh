#!/bin/bash

# Set the default username and password for testing
GOTTY_USERNAME=${GOTTY_USERNAME:-root}
GOTTY_PASSWORD=${GOTTY_PASSWORD:-1234}

# Create a credentials file
echo "$GOTTY_USERNAME:$GOTTY_PASSWORD" > /tmp/gotty-credentials

# Run gotty with the credentials file
/usr/local/bin/gotty --permit-write --reconnect -c /tmp/gotty-credentials /bin/bash

# Clean up the credentials file
rm -f /tmp/gotty-credentials

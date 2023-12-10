#!/bin/bash

# Set the default password (CHANGE THIS TO A SECURE PASSWORD)
GOTTY_PASSWORD=${GOTTY_PASSWORD:-mypassword}

/usr/local/bin/gotty --permit-write --reconnect --credential $GOTTY_PASSWORD /bin/bash

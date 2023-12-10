#!/bin/bash

# Set the default username and password (CHANGE THESE TO SECURE VALUES)
GOTTY_USERNAME=${GOTTY_USERNAME:-myusername}
GOTTY_PASSWORD=${GOTTY_PASSWORD:-mypassword}

/usr/local/bin/gotty --permit-write --reconnect --credential $GOTTY_USERNAME:$GOTTY_PASSWORD /bin/bash

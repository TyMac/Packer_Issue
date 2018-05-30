#!/bin/bash

cat > /etc/rc.d/rc.local <<EOF
# THIS FILE IS ADDED FOR COMPATIBILITY PURPOSES
#
# It is highly advisable to create own systemd services or udev rules
# to run scripts during boot instead of using this file.
#
# In contrast to previous versions due to parallel execution during boot
# this script will NOT be run after all other services.
#
# Please note that you must run 'chmod +x /etc/rc.d/rc.local' to ensure
# that this script will be executed during boot.



touch /var/lock/subsys/local
EOF

chmod +x /etc/rc.d/rc.local

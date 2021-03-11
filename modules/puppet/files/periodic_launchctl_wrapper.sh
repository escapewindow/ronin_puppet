#!/bin/bash
# Wrapper to [re]start the periodic puppet service
# Comment so I know things are running properly

/bin/launchctl list | grep -wq "com.mozilla.periodic"
status=$?
set -e
if [ $status -eq 0 ] ; then
    /bin/launchctl unload "/Library/LaunchDaemons/com.mozilla.periodic.plist"
fi
/bin/launchctl load "/Library/LaunchDaemons/com.mozilla.periodic.plist"

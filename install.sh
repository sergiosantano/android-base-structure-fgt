#!/usr/bin/env bash

# Close AndroidStudio
RUNNING_PROCESSES=$(ps -ax | grep /Applications/Android\ Studio.app/Contents/MacOS/studio)
ANDROID_STUDIO_PROCESS=${RUNNING_PROCESSES:0:5}
kill $ANDROID_STUDIO_PROCESS

# Copy the new FGT
cp -r ./BaseArchitecture /Applications/Android\ Studio.app/Contents/plugins/android/lib/templates/other

# Wait some seconds
sleep 3s

# Relaunch AndroidStudio
open -a /Applications/Android\ Studio.app
#!/bin/bash
emacsclient --eval "(make-orgcapture-frame $POPCLIP_TEXT)"
osascript -e 'tell application "Terminal" to close (every window whose name contains ".command")' &
exit

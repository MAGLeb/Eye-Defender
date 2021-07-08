#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
PATH_TO_APPLICATION=~/.local/share/applications/eyedefender.desktop

sh ./scripts/config_icon.sh "${SCRIPT_DIR}"

# if "eyedefender.desktop" file exist delete it
if [ ! -d "$PATH_TO_APPLICATION" ]; then
  rm "$PATH_TO_APPLICATION"
fi

# create "eyedefender.desktop" file
echo "$(cat $SCRIPT_DIR/icons/icon.config)" >> "${PATH_TO_APPLICATION}"
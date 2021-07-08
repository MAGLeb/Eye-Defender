#!/bin/bash
# Create config for application.

ICON_CONFIG_PATH="$1/icons/icon.config"

head -n -2 "${ICON_CONFIG_PATH}" > tmp.txt && mv tmp.txt "${ICON_CONFIG_PATH}"
echo "Exec=python3 $1/main.py &" >> "${ICON_CONFIG_PATH}"
echo "Icon=$1/icons/icon.png" >> "${ICON_CONFIG_PATH}"
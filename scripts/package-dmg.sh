#!/bin/sh
test -f Oscar-Installer.dmg && rm Oscar-Installer.dmg

# copy the application to temp folder
cp -r "./build/Build/Release/Oscar.app" "scripts/source_folder/"

create-dmg \
    --volname "Oscar Installer" \
    --window-pos 200 120 \
    --window-size 800 400 \
    --icon-size 100 \
    --icon "Oscar.app" 200 190 \
    --hide-extension "Application.app" \
    --app-drop-link 600 185 \
    "oscar-installer.dmg" \
    "scripts/source_folder/"

#!/usr/bin/env bash

# Automatically install purchased apps from the Mac App Store

mas signout

read -r -t 60 -p "What is yout Apple ID?: " appleid
mas signin --dialog "$appleid"

# Mac App Store apps to install
# Get id from sharing link
apps=(
    "1password-7-password-manager:1333542190"
    "day-one:1055511498"
    "drafts:1435957248"
    "evernote:406056744"
    "fantastical-2:975937182"
    "ivi-4:1221678819"
    "keynote:409183694"
    "kindle:405399194"
    "moom:419330170"
    "omnigraffle-7:1142578753"
    "pixelmator:407963104"
    "remote-mouse:403195710"
    "slack:803453959"
    "skitch-snap-mark-up-share:425955336"
    "todoist-to-do-list-tasks:585829637"
    "tweetbot-2-for-twitter:557168941"
    "speedtest-by-ookla:1153157709"
    "whatsapp-desktop:1147396723"
    "webcam-settings:533696630"
)

for app in "${apps[@]}"; do
    name=${app%%:*}
    id=${app#*:}

    echo -e "Attempting to install $name"
    mas install "$id"
done

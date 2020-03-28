#!/usr/bin/env bash

# Automatically install purchased apps from the Mac App Store

mas signout

read -r -t 60 -p "What is yout Apple ID?: " appleid
mas signin --dialog "$appleid"

# Mac App Store apps to install
# Get id from sharing link
apps=(
    "drafts:1435957248"
    "keynote:409183694"
    "1password-7-password-manager:1333542190"
    "speedtest-by-ookla:1153157709"
    "ivi-4:1221678819"
    "whatsapp-desktop:1147396723"
    "omnigraffle-7:1142578753"
    "moom:419330170"
    "day-one:1055511498"
    "remote-mouse:403195710"
    "fantastical-2:975937182"
    "webcam-settings:533696630"
    "tweetbot-2-for-twitter:557168941"
    "slack:803453959"
    "pixelmator:407963104"
    "kindle:405399194"
    "evernote:406056744"
    "webcam-settings:533696630"
)

for app in "${apps[@]}"; do
    name=${app%%:*}
    id=${app#*:}

    echo -e "Attempting to install $name"
    mas install "$id"
done

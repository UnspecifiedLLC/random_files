#!/bin/bash

Minutes () { printf '%.0f' $(python -c "print 60*${1}"); }

Start_Loop () {
    echo -e "Getting List"
    while read -r ENTRY; do
        if [ "$ENTRY" != 'Duration (Minutes) Path/URL' ]; then
            ENTRY=(${ENTRY})
            echo -e "Starting Chromium at ${ENTRY[1]}";
            chromium-browser --disable-infobars --disable-session-crashed-bubble --kiosk ${ENTRY[1]} &>/dev/null &
            disown
            echo -e "Waiting for ${ENTRY[0]} minutes.\n\n";
            sleep $(Minutes ${ENTRY[0]})
        fi
    done < <(curl 'https://raw.githubusercontent.com/UnspecifiedLLC/random_files/master/info-radiator/list.txt')
}

while true; do
    Start_Loop
done

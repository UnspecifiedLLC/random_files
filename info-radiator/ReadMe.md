# Info Radiator

### list.txt

https://raw.githubusercontent.com/UnspecifiedLLC/random_files/master/info-radiator/list.txt

Requirements:
    Place each entry on a new line, separating duration from path with a space.

- `duration`: FLOAT
    - Length of time in minutes to remain on this site.
- `path`: STRING
    - File Path or URL to open in Browser.

### Radiator.sh

Built and tested in Raspbian with the LXDE Desktop Environment.

Hard coded to poll https://raw.githubusercontent.com/UnspecifiedLLC/random_files/master/info-radiator/list.txt every iteration for the list. GitHub may take several minutes to refresh the raw versions of files after update.

Uses `chromium-browser` in `kiosk` mode.

### Start the Radiator on Bootup

For LXDE, We saved Raditor.sh as `/bin/Radiator` and made it executable `sudo chmod a+x /bin/Radiator`.
Then we used `sudo nano /etc/xdg/lxsession/LXDE-pi/autostart` to add `@Radiator` at the end.

### Closing the Radiator

To close the chromium-browser kiosk, use `ctrl + F4` then open a terminal and enter `pkill Radiator`, otherwise the Script will continue running and will re-open Chromium in Kiosk mode at the end of the timeout.

# Info Radiator Site List

### list.txt

https://raw.githubusercontent.com/UnspecifiedLLC/random_files/master/info-radiator/list.txt

Requirements:
    Place each entry on a new line, separating duration from path with a space.

- `duration`: FLOAT
    - Length of time in minutes to remain on this site.
- `path`: STRING
    - File Path or URL to open in Browser.

### Radiator.sh

Built and tested in Raspbian.

Hard coded to poll https://raw.githubusercontent.com/UnspecifiedLLC/random_files/master/info-radiator/list.txt every iteration for the list. GitHub may take several minutes to refresh the raw versions of files after update.

Uses `chromium-browser` in `kiosk` mode.

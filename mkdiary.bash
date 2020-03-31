#!/bin/bash
directory="${HOME}/diary/$(date '+%Y-%m')" #HOME=/home/tomita
# If there is no directory, make directory
if [ ! -d "$directory" ]; then
    mkdir "$directory"
fi
# create file path
diaryfile="${directory}/$(date '+%Y-%m-%d').txt"
# insert date
if [ ! -e "$diaryfile" ]; then
    date '+%Y/%m/%d' > "$diaryfile"
fi
vim "$diaryfile"


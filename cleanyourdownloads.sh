#! /bin/sh

#TODO: perhaps a cronjob would be more fitting lol
PATH_TO_DOWNLOADS=$(xdg-user-dir DOWNLOAD)

while true
do
    file_count=$(ls -a $PATH_TO_DOWNLOADS | wc -l)

    # obviously do not consider . or .. hardlinks
    if [ $file_count -gt 2 ]; then
        notify-send "clean your download-folder" "unsorted files ain't pretty" --icon=indicator-trashindicator-attention
    fi
    sleep 1800 #30 minutes
done

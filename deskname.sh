#! /bin/sh
#get the name of your current desktop

#usage: ./desknames.sh desktop_1 desktop_2 ... desktop_n
#in my case: ./deskname.sh chill prod code ctrl

desk_index=$(xprop -root -notype _NET_CURRENT_DESKTOP | grep -o [0-9]*)
desknames=( "$@" )
for i in {0..10} #TODO: hard-coded limits are never any good!
do
        if [ $i -eq $desk_index ];
        then
		echo "${desknames[$i]}"
		exit
        fi
done
echo "???"

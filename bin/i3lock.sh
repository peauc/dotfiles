#!/bin/sh
ls ~/Pictures/Lockscreen|sort -R |tail -1 |while read file;do
# Something involving $file, or you can leave
# off the while to just get the filenames
i3lock -i ~/Pictures/Lockscreen/$file
done

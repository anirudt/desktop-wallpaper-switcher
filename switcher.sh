#!/bin/bash

total_num=$(wc -l ~/Projects/small_projects/desktop-switcher/vim-cmds.txt | awk '{print $1;}')
num=$(($RANDOM%122+1))
echo $total_num
text=$(head -n $num ~/Projects/small_projects/desktop-switcher/vim-cmds.txt | tail -n 1)
echo $text

echo $text | convert -negate -size x400 -pointsize 20 -font Helvetica -style Normal -fill black text:- -trim +repage -background white -flatten /tmp/text_box_trimmed.png

feh --bg-center /tmp/text_box_trimmed.png

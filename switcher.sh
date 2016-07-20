#!/bin/bash

# Total number of lines in our text file
total_num=$(wc -l ~/Projects/small_projects/desktop-switcher/vim-cmds.txt | awk '{print $1;}')

# Randomizer
num=$(($RANDOM%122+1))
echo $total_num

# Getting a line of text to be printed, determined by the randomizer
text=$(head -n $num ~/Projects/small_projects/desktop-switcher/vim-cmds.txt | tail -n 1)
echo $text

# Making an image out of the text using ImageMagick
echo $text | convert -negate -size x400 -pointsize 20 -font Helvetica -style Normal -fill black text:- -trim +repage -background white -flatten /tmp/text_box_trimmed.png

# Using feh to finally set the background
feh --bg-center /tmp/text_box_trimmed.png

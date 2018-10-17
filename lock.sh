#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#444444ff'  # default
T='#CB3838ff'  # text
W='#fa3b48ff'  # wrong
V='#a9cf4fff'  # verifying

i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$V       \
--wrongcolor=$W       \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$T       \
--bshlcolor=$W        \
\
--screen 1            \
--blur 5              \
--clock               \
--indicator           \
--timestr="%H:%M"     \
--datestr="%A, %m %Y" \


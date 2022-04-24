#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#444444ff'  # default
T='#CB3838ff'  # text
W='#fa3b48ff'  # wrong
V='#a9cf4fff'  # verifying

i3lock \
--insidever-color=$C   \
--ringver-color=$V     \
\
--insidewrong-color=$C \
--ringwrong-color=$W   \
\
--inside-color=$B      \
--ring-color=$D        \
--line-color=$B        \
--separator-color=$D   \
\
--verif-color=$V       \
--wrong-color=$W       \
--time-color=$T        \
--date-color=$T        \
--layout-color=$T      \
--keyhl-color=$T       \
--bshl-color=$W        \
\
--screen 1            \
--blur 5              \
--clock               \
--indicator           \
--time-str="%H:%M"     \
--date-str="%A, %m %Y" \


pkill -u $USER -USR1 dunst

# $PICTURE=$HOME/.config/wallpapers/red-mountains-morning-minimal-4k-dn.jpg

PICTURE=/tmp/i3lock.png
SCREENSHOT="scrot -z $PICTURE"

BLUR="0x15"

$SCREENSHOT
convert $PICTURE -blur $BLUR $PICTURE

# https://www.reddit.com/r/unixporn/comments/7df2wz/i3lock_minimal_lockscreen_pretty_indicator/
#i3lock -n -i $PICTURE \
#    --inside-color=373445ff --ring-color=ffffffff --line-uses-inside \
#    --keyhl-color=d23c3dff --bshl-color=d23c3dff --separator-color=00000000 \
#    --insidever-color=fecf4dff --insidewrong-color=d23c3dff \
#    --ringver-color=ffffffff --ringwrong-color=ffffffff --ind-pos="x+86:y+1003" \
#    --radius=15 --verif-text="" --wrong-text="" --noinput-text=""

RED="d23c3dff"
YELLOW="fecf4d"
GREY50="373445ff"
TRANSPARENT="00000000"
PURPLE="701e90cc"
PINK="c12363cc"
WHITE="ffffffff"

i3lock -n -i $PICTURE \
    --inside-color=$GREY50 --ring-color=$TRANSPARENT --line-uses-inside \
    --keyhl-color=$WHITE --bshl-color=$RED --separator-color=$TRANSPARENT \
    --insidever-color=$WHITE --insidewrong-color=$RED \
    --ringver-color=$TRANSPARENT --ringwrong-color=$TRANSPARENT --ind-pos="x+130:y+970" \
    --radius=40 --verif-text="" --wrong-text="" --noinput-text=""

rm $PICTURE

pkill -u $USER -USR2 dunst

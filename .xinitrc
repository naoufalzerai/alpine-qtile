slstatus &

# Uncomment and edit to set the wallpaper.
# feh --bg-fill ~/Pictures/wallpaper.png

# start up picom to avoid screen tearing
picom --vsync &

# Saving a dwm log
exec dwm > ~/.dwm.log

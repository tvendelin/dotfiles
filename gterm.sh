#!/bin/bash

# To get all profile settings, run
# gsettings list-recursively  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$DPROF/|cut -d' ' -f2,3'

DPROF=$(gsettings get org.gnome.Terminal.ProfilesList default|cut -d"'" -f 2)
JADAJADA="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$DPROF/"

gsettings set $JADAJADA    font 'Monospace 10'
gsettings set $JADAJADA    background-color 'rgb(30,30,30)'
gsettings set $JADAJADA    foreground-color 'rgb(230,212,163)'
gsettings set $JADAJADA    palette "[
    'rgb(30,30,30)',
    'rgb(204,0,0)',
    'rgb(130,132,21)',
    'rgb(204,136,26)',
    'rgb(56,115,118)',
    'rgb(160,75,115)',
    'rgb(87,143,87)',
    'rgb(152,136,113)',
    'rgb(128,112,97)',
    'rgb(247,48,40)',
    'rgb(170,176,30)',
    'rgb(247,177,37)',
    'rgb(113,149,134)',
    'rgb(199,112,137)',
    'rgb(125,182,105)',
    'rgb(230,212,163)']"
gsettings set $JADAJADA    encoding 'UTF-8'
gsettings set $JADAJADA    default-size-columns 160
gsettings set $JADAJADA    default-size-rows 48
gsettings set $JADAJADA    cursor-blink-mode 'system'
gsettings set $JADAJADA    cursor-colors-set false
gsettings set $JADAJADA    use-system-font false
gsettings set $JADAJADA    bold-is-bright true
gsettings set $JADAJADA    highlight-colors-set true
gsettings set $JADAJADA    allow-bold true
gsettings set $JADAJADA    scrollback-lines 10000

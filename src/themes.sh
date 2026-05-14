#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @flexoki-tmux_theme)"
TRANSPARENT_THEME="$(tmux show-option -gv @flexoki-tmux_transparent)"

case $SELECTED_THEME in
"light")
  declare -A THEME=(
    ["background"]="#FFFCF0"
    ["foreground"]="#100F0F"
    ["black"]="#DAD8CE"
    ["blue"]="#205EA6"
    ["cyan"]="#24837B"
    ["green"]="#66800B"
    ["magenta"]="#5E409D"
    ["red"]="#AF3029"
    ["white"]="#100F0F"
    ["yellow"]="#AD8301"

    ["bblack"]="#E6E4D9"
    ["bblue"]="#205EA6"
    ["bcyan"]="#24837B"
    ["bgreen"]="#66800B"
    ["bmagenta"]="#A02F6F"
    ["bred"]="#BC5215"
    ["bwhite"]="#6F6E69"
    ["byellow"]="#AD8301"

    ["ghgreen"]="#66800B"
    ["ghmagenta"]="#5E409D"
    ["ghred"]="#AF3029"
    ["ghyellow"]="#AD8301"
  )
  ;;

*)
  # Default to dark theme
  declare -A THEME=(
    ["background"]="#100F0F"
    ["foreground"]="#CECDC3"
    ["black"]="#403E3C"
    ["blue"]="#4385BE"
    ["cyan"]="#3AA99F"
    ["green"]="#879A39"
    ["magenta"]="#8B7EC8"
    ["red"]="#D14D41"
    ["white"]="#CECDC3"
    ["yellow"]="#D0A215"

    ["bblack"]="#1C1B1A"
    ["bblue"]="#4385BE"
    ["bcyan"]="#3AA99F"
    ["bgreen"]="#879A39"
    ["bmagenta"]="#CE5D97"
    ["bred"]="#DA702C"
    ["bwhite"]="#B7B5AC"
    ["byellow"]="#D0A215"

    ["ghgreen"]="#879A39"
    ["ghmagenta"]="#8B7EC8"
    ["ghred"]="#D14D41"
    ["ghyellow"]="#D0A215"
  )
  ;;
esac

# Override background with "default" if transparent theme is enabled
if [ "${TRANSPARENT_THEME}" == 1 ]; then
  THEME["background"]="default"
fi

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"

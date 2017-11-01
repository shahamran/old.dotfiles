#
# ~/.profile
#
#

[[ "$XDG_CURRENT_DESKTOP" == "KDE" ]] || [[ "$XDG_CURRENT_DESKTOP" == "GNOME" ]] || export QT_QPA_PLATFORMTHEME="qt5ct"

[[ -f ~/.extend.profile ]] && . ~/.extend.profile

# Set keyboard layout stuff
setxkbmap -layout us,il -option "grp:alt_shift_toggle,grp_led:scroll"

export SSH_ASKPASS="$(which ksshaskpass)"
# eval "$(ssh-agent)"

export PATH="$HOME/.cargo/bin:$PATH"

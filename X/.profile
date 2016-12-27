#
# ~/.profile
#
#

[[ "$XDG_CURRENT_DESKTOP" == "KDE" ]] || [[ "$XDG_CURRENT_DESKTOP" == "GNOME" ]] || export QT_QPA_PLATFORMTHEME="qt5ct"

[[ -f ~/.extend.profile ]] && . ~/.extend.profile

# Set keyboard layout stuff
setxkbmap -layout us,il -option "grp:alt_shift_toggle,grp_led:scroll"


# Start Keychain
# keychain ~/.ssh/id_rsa
# [ -f ~/.keychain/$HOST-sh ] && . ~/.keychain/$HOST-sh 2>/dev/null
# [ -f ~/.keychain/$HOST-sh-gpg ] && . ~/.keychain/$HOST-sh-gpg 2>/dev/null
export $(gnome-keyring-daemon -s)


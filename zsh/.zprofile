# Set keyboard layout stuff
setxkbmap -layout us,il -option "grp:alt_shift_toggle,grp_led:scroll"


# Start Keychain
#keychain ~/.ssh/id_rsa
#[ -f ~/.keychain/$HOST-sh ] && . ~/.keychain/$HOST-sh 2>/dev/null
#[ -f ~/.keychain/$HOST-sh-gpg ] && . ~/.keychain/$HOST-sh-gpg 2>/dev/null

export SSH_ASKPASS="$(which ksshaskpass)"
export XDG_CONFIG_HOME="$HOME/.config"

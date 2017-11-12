set config_home "$HOME/.config"

source "$config_home/fish/aliases.fish"

# unlock ssh key
ssh-add "$HOME/.ssh/id_rsa"

# readable ls colors for mintty
set dircolors_file "$config_home/mintty/dircolors-solarized.256dark"
if test -e $dircolors_file
  eval (dircolors -c $dircolors_file) > /dev/null
end
set -e dircolors_file

set -e config_home

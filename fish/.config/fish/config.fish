set config_home "$HOME/.config"

source "$config_home/fish/aliases.fish"

set dircolors_file "$config_home/mintty/dircolors-solarized.256dark"
if test -e $dircolors_file
  eval (dircolors -c $dircolors_file)
end

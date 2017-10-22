#!/bin/bash

function doOperation {
  echo -n "$1? [y/N]"
  read answer
  if (( answer == "y" )) || (( answer == "Y" )); then
    "$2"
  fi
}

# check if a package manager variable is defined
if [ -z $PACKMAN ]; then
  # if not, use Ubuntu's
  PACKMAN=apt-get
  UPDATE_COMMAND=update
  INSTALL_COMMAND=install
fi

doOperation "update package database" "sudo $PACKMAN $UPDATE_COMMAND"

echo "installing programs..."
if ( -z $PROGRAMS ); then
  PROGRAMS=( bash compton conky git i3 termite vim X zsh )
fi
for prog in "${PROGRAMS[@]}"
do
  doOperation "install $prog" "sudo $PACKMAN $INSTALL_COMMAND $prog"
done;


#!/bin/bash

programs=( bash compton conky git i3 termite vim X zsh )
for prog in "${programs[@]}"
do
	echo $prog
done;


# Path to your oh-my-zsh installation.
export ZSH=/home/ransha/.oh-my-zsh

ZSH_THEME="intheloop"

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git)
source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"
# path
#path="$PATH"
#path="$path:/home/ransha/bin"
#path="$path:/home/ransha/miniconda3/bin"
#path="$path:/home/ransha/.gem/ruby/2.3.0/bin"
#export PATH="$path"
export PATH="/home/ransha/miniconda3/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f /home/ransha/Downloads/google-cloud-sdk/path.zsh.inc ]; then
  source '/home/ransha/Downloads/google-cloud-sdk/path.zsh.inc'
fi
# The next line enables shell command completion for gcloud.
if [ -f /home/ransha/Downloads/google-cloud-sdk/completion.zsh.inc ]; then
  source '/home/ransha/Downloads/google-cloud-sdk/completion.zsh.inc'
fi

# colored man pages
man() {
	LESS_TERMCAP_md=$'\e[01;31m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_so=$'\e[01;44;33m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	LESS_TERMCAP_us=$'\e[01;32m' \
	command man "$@"
}

# env variables
export VISUAL=vim
export EDITOR=vim
export MATLAB_LOG_DIR="$HOME/.log/matlab"

# aliases
#source "$HOME/.aliasrc"

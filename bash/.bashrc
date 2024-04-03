#
# ~/.bashrc
#

export BASH_SILENCE_DEPRECATION_WARNING=1

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source "$HOME/.fzf.bash"

# keybinds
#
bind -x '"\C-l":clear'

eval "$(starship init bash)"
eval "$(zoxide init bash)"

# enable bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~

export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

# ~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~

export XDG_CONFIG_HOME="$HOME/.config"

# ~~~~~~~~~~~~~~~ SSH ~~~~~~~~~~~~~~~~~~~~~~~~

{
ssh-add --apple-use-keychain --apple-load-keychain ~/.ssh/id_ed25519

ssh-add --apple-use-keychain --apple-load-keychain ~/.ssh/fysiofresh
} &>/dev/null

# ~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~

alias v="nvim"
alias vim="nvim"
alias vi="nvim"

alias ..="cd .."
alias dot="cd ~/.dotfiles"
alias c="clear"

# ls
alias ls="ls --color=auto"
alias ll="ls -la"
alias la="ls -lathr"

# git
alias g="git"
alias gp="git pull"
alias gs="git status"
alias lg="lazygit"

# supabase
alias sb="supabase"

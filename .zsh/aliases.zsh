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
alias sb-start="pnpm dlx env-cmd --file supabase/.env.local pnpm dlx supabase@beta start --ignore-health-check"
alias sb-stop="pnpm dlx env-cmd --file supabase/.env.local pnpm dlx supabase stop"
alias sb-reset="pnpm dlx env-cmd --file supabase/.env.local pnpm dlx supabase db reset"

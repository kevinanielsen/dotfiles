alias ls='ls -G'                              # colorize `ls` output
alias zshreload='source ~/.zshrc'             # reload ZSH
alias shtop='sudo htop'                       # run `htop` with root rights
alias grep='grep --color=auto'                # colorize `grep` output
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias less='less -R'
alias g='git'
alias git add .='git add -p'
alias git add -A='git add -p'

alias dev='cd ~/Developer'
alias gup='git fetch && g pull'
alias vim=nvim
alias lg=lazygit
alias air="~/Developer/go/bin/air"
alias main="git switch main"
alias clr="clear"
alias cd="z"

alias spotlighton="sudo mdutil -i on"
alias spotlightoff="sudo mdutil -i off"

alias k="kubectl"
alias sb="supabase"

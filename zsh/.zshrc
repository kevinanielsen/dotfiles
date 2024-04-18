eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source /Users/kevinanielsen/.zsh/fast-syntax-highlighting/F-Sy-H.plugin.zsh

# Load completion config
source /Users/kevinanielsen/.zsh/completion.zsh

# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist
source /Users/kevinanielsen/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/kevinanielsen/.zsh/history.zsh
source /Users/kevinanielsen/.zsh/key-bindings.zsh
source /Users/kevinanielsen/.zsh/aliases.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/kevinanielsen/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

source "$HOME/.cargo/env"

[ -f ~/.inshellisense/key-bindings.zsh ] && source ~/.inshellisense/key-bindings.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

fcd() {
  local dir
  dir=$(find ${1:-.} -type d -not -path '*/\.*' 2> /dev/null | fzf +m) && cd "$dir"
}

# Load deno
export DENO_INSTALL="/Users/kevinanielsen/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

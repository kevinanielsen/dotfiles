# Setting PATH for Python 3.10
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kevinanielsen/google-cloud-sdk/path.bash.inc' ]; then . '/Users/kevinanielsen/google-cloud-sdk/path.bash.inc'; fi

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

. "$HOME/.cargo/env"

export BASH_SILENCE_DEPRECATION_WARNING=1

# ~~~~~~~~~~~~~~~ Completions ~~~~~~~~~~~~~~~~~~~~
# enable bash complation
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kevinanielsen/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/kevinanielsen/google-cloud-sdk/completion.bash.inc'; fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

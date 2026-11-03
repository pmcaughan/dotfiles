
# Added by Kiro CLI
case ":$PATH:" in *":$HOME/.local/bin:"*) ;; *) export PATH="${PATH:+$PATH:}$HOME/.local/bin" ;; esac

alias ll='ls -la'
alias ls='ls --color=auto'
export PATH=$PATH:~/Scripts
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
# PS1='$\[\033[01;32m\]「 \u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[01;32m\] 」\[\033[00m\]\$ '
#
# Color definitions
RED='\[\e[1;31m\]'
GREEN='\[\e[1;32m\]'
BLUE='\[\e[1;34m\]'
RESET='\[\e[0m\]'

# PROMPT='%B「%n@%m:%b%1/%B」%b$ '

setopt PROMPT_SUBST

git_branch() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  [ -n "$branch" ] && echo " ($branch)"
}

PS1='%B「%n@%m:%b%1/%B$(git_branch)」%b$ '


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


eval "$(pyenv init -)"

cowsay -f turtle "Let's get this bread" 

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PATH="/opt/homebrew/opt/mysql-client@5.7/bin:$PATH"

export LDFLAGS="-L/opt/homebrew/opt/mysql-client@5.7/lib $LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/mysql-client@5.7/include $CPPFLAGS"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/phillipmcaughan/.cache/lm-studio/bin"
export PATH="$HOME/.local/bin:$PATH"
export EDITOR="nvim"
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}



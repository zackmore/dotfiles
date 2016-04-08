[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#export PS1="⭕️  \W\[\033[31m\]\$(git-radar --bash --fetch)\[\033[00m\] \$  \[\033[40m\]"
export PS1="\[\033[91m\]λ \[\033[00m\]\W\[\033[31m\]\$(git-radar --bash --fetch)\[\033[94m\] \$ \[\033[00m\]"

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

# pyenv and pyenv-virtualenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# thefuck
eval "$(thefuck --alias)"
eval "$(thefuck --alias FUCK)"

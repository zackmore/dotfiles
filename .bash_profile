[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
PYENV_VERSION=3.4.2

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[⭕️ \]\h:\W\[\033[31m\]\$(parse_git_branch)\[\033[00m\] \u\$ "

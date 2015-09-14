[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PS1="\[⭕️ \]\h:\W\[\033[31m\]\$(git-radar --bash --fetch)\[\033[00m\] \u\$ "

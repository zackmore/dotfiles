alias ls='ls -G'
alias vin='vim -u ~/.vimrc_2tab'
alias sd='ssh -p 22222 zack@zengq.in'
alias fuck='$(thefuck $(fc -ln -1))'
alias FUCK='fuck'
alias eg='eg --no-color'
alias ta='tmux a -t'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'
alias pt='ping 8.8.8.8'

# Added by termtile (https://github.com/apaszke/termtile)
alias ttul='osascript ~/.termtile/tile.scpt up left'
alias ttur='osascript ~/.termtile/tile.scpt up right'
alias ttdl='osascript ~/.termtile/tile.scpt down left'
alias ttdr='osascript ~/.termtile/tile.scpt down right'
alias ttll='osascript ~/.termtile/tile.scpt left'
alias ttrr='osascript ~/.termtile/tile.scpt right'
alias ttup='osascript ~/.termtile/tile.scpt up'
alias ttdown='osascript ~/.termtile/tile.scpt down'
alias ttbig='osascript ~/.termtile/resize.scpt '
alias ttcen='osascript ~/.termtile/center.scpt '
alias ttmax='osascript ~/.termtile/maximize.scpt '
alias ttsn='osascript ~/.termtile/changeScreen.scpt next'
alias ttfs='osascript ~/.termtile/fullscreen.scpt '

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export GOPATH="/usr/local/lib/go"

source ~/.nvm/nvm.sh

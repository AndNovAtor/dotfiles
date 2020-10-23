# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -lh'
alias la='ls -A'
alias lla='ls -lah'

# my aliases

#  apt aliases
alias aptgi='apt-get install'
alias aptud='apt-get update'
alias aptg='apt-get upgrade'
alias aptdg='apt-get dist-upgrade'
alias aptr='apt-get autoremove'
alias aptc='apt-get autoclean'

alias apti='apt install'
alias aptd='apt update'
alias aptfu='apt full-upgrade'
alias aptar='apt autoremove'
alias aptac='apt autoclean'

#  ack-grep
alias ack='ack-grep'
#  git
alias gush='git push'
alias gull='git pull'
alias ggui='git gui&'
alias gco='git checkout'
alias gst='git status'
alias gitka='gitk --all&'
alias gdi='git diff --color'
alias glo='git log --color'
alias gfe='git fetch'
#  ledger
alias leed='gvim $LEDGER_FILE'
#  other
alias o='xdg-open'
alias wget='wget --no-check-certificate' # workaround wget bug, see https://github.com/blog/738-sidejack-prevention-phase-2-ssl-everywhere#comment-9002

# apts with filtering
apts() {
  apt-cache search $* | ack "$(echo $*|sed 's/\s\+/|/g')"
}

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

# for commands with sudo autocomplition
alias sudo='sudo '

# my aliases

# yum aliases
alias yumi='sudo yum install'
alias yumu='sudo yum update'
alias yumug='sudo yum upgrade'
alias yumcu='sudo yum check-update'
alias yumca='sudo yum clean all'
alias yumcc='sudo yum clean cache'
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

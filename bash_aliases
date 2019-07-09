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
alias aptgi='sudo apt-get install'
alias aptud='sudo apt-get update'
alias aptug='sudo apt-get upgrade'
alias aptdg='sudo apt-get dist-upgrade'
alias aptr='sudo apt-get autoremove'
alias aptc='sudo apt-get autoclean'

alias apti='sudo apt install'
alias aptd='sudo apt update'
alias aptg='sudo apt upgrade'
alias aptfu='sudo apt full-upgrade'
alias aptar='sudo apt autoremove'
alias aptac='sudo apt autoclean'

# # yum aliases
# alias yumi='sudo yum install'
# alias yumu='sudo yum update'
# alias yumug='sudo yum upgrade'
# alias yumcu='sudo yum check-update'
# alias yumca='sudo yum clean all'
# alias yumcc='sudo yum clean cache'
#  gem
alias gi="sudo gem install"
alias gu="sudo gem update"
#  ack-grep
alias ack='ack-grep'
alias ackrb='ack --type-add ruby=.erb,.haml'
#  rails
alias ss='script/server'
alias sc='script/console'
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
#  svn
alias sup='svn update'
# TODO ignoring Makefile system-wide is a Bad Thing. This should be done only for Qt projects.
alias sst='svn status | ack -v "Makefile|(_tmp|pro.user|/_?debug|/_?release)$"'
#  ledger
alias leed='gvim $LEDGER_FILE'
#  other
alias o='xdg-open'
alias wget='wget --no-check-certificate' # workaround wget bug, see https://github.com/blog/738-sidejack-prevention-phase-2-ssl-everywhere#comment-9002

# -- FUNCTIONS --
# TODO: separate file

# apts with filtering
apts() {
  apt-cache search $* | ack "$(echo $*|sed 's/\s\+/|/g')"
}

# svn
sdi() {
  svn diff $* | colordiff | less -R
}
slo() {
  svn log $* | colordiff | less -R
}


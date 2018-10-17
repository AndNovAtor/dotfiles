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
alias apti='apt-get install'
alias aptd='apt-get update'
alias aptg='apt-get upgrade'
alias aptdg='apt-get dist-upgrade'
alias aptar='apt-get autoremove'
alias aptac='apt-get autoclean'
#  gem
alias gi="gem install"
alias gu="gem update"
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


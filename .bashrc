# CD aliases
alias src='cd C:/Source'

# Git shortcuts
alias gs='git status'
alias gf='git fetch'
alias gfp='git fetch && git pull'
alias gcm='git commit --amend --no-change'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gr='git reset'
alias grh='git reset --hard'

# Branch shortcuts
alias gcd='git checkout development'
alias gcs='git checkout staging'
alias gcm='git checkout master'

# Helper Functions
alias gl='pretty_git_log'

# Pretty Log
HASH="%C(always,yellow)%h%C(always,reset)"
RELATIVE_TIME="%C(always,green)%ar%C(always,reset)"
AUTHOR="%C(always,bold blue)%an%C(always,reset)"
REFS="%C(always,red)%d%C(always,reset)"
SUBJECT="%s"

FORMAT="$HASH $RELATIVE_TIME{$AUTHOR{$REFS $SUBJECT"

gl() {
  git log --graph --pretty="tformat:$FORMAT" $* |
  column -t -s '{' |
  less -XRS --quit-if-one-screen
}

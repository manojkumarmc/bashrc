alias ff="find ./ -name"
alias ll="ls -ltra"

function grp1() {
  grep -irl "$@" | more
}

function grp2() {
  grep -rHc "$@" | grep -v 0 | more
}

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "


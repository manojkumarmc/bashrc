alias ff="find ./ -name"
alias ll="ls -ltra"
alias emacs="emacs -nw"

function grp1() {
  grep -irl "$@" | more
}

function grp2() {
  grep -rHc "$@" | grep -v 0 | more
}

export EDITOR=emacs

__git_ps1 () 
{ 
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf "(%s) " "${b##refs/heads/}";
    fi
}

# git branch name in the prompt
# Thanks to jlindamood for this one
export PS1="$Y\t$N $W"'$(__git_ps1 "(%s) ")'"$N$PROMPT_COLOR\u@\H$N:$C\w$N\n"'$CURSOR_PROMPT '

alias e='emacs'
alias g='git'
alias gb='git for-each-ref --sort=committerdate refs/heads/ --format="%(committerdate:short)   %(refname:short)"'
alias gs='git show -w'
alias gf='git fetch'
alias gr='git rebase origin/master'
alias gri='git rebase -i origin/master'
alias l='ls -l'

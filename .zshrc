
EDITOR=emacs

export PATH="$PATH:~/bin"

# Git branch name in prompt
autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst
PROMPT='%F{green}%n@%m%f %F{blue}%~%f ${vcs_info_msg_0_} %# '
zstyle ':vcs_info:git:*' formats '(%b)'

# Twilight theme
_username() {
   echo "%{$FG[006]%}%n%{$reset_color%}"
}

_hostname() {
   echo "%{$FG[005]%}%m%{$reset_color%}"
}
# current directory, two levels deep
_directory() {
   echo "%{$FG[002]%}%(4~|../%3~|%~)"
}

_symbol() {
   echo "%{$FG[012]%}%#"
}

_char() {
   echo "%{$FG[002]%}@%{$reset_color%}"
}

# This is complicated but it will take the exit code of the last command and do certain things depending on what it is. If the exit code is zero, it will show the first part, but if the code is not 0, it will show the last part. They are the same except for colors.
_arrows() {
   echo "%(? %{$FG[001]%}›%{$FG[011]%}›%{$FG[002]%}› %{$FG[001]%}›%{$FG[001]%}›%{$FG[001]%}›)"
}
# set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%B$(_username)%B$(_char)%B$(_hostname) $(_directory) %B$(_symbol) %B$(_arrows)%b '
RPROMPT='$(git_prompt_info)'

# vim:set ft=sh ts=4 sw=4 noet:

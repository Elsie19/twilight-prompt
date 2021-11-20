# Twilight theme
username() {
   echo "%{$FG[006]%}%n%{$reset_color%}"
}

hostname() {
   echo "%{$FG[005]%}%m%{$reset_color%}"
}
# current directory, two levels deep
directory() {
   echo "%{$FG[002]%}%(4~|../%3~|%~)"
}

symbol() {
   echo "%{$FG[012]%}%#"
}

char() {
   echo "%{$FG[002]%}@%{$reset_color%}"
}

# This is complicated but it will take the exit code of the last command and do certain things depending on what it is. If the exit code is zero, it will show the first part, but if the code is not 0, it will show the last part. They are the same except for colors.
arrows() {
   echo "%(? %{$FG[001]%}›%{$FG[011]%}›%{$FG[002]%}› %{$FG[001]%}›%{$FG[001]%}›%{$FG[001]%}›)"
}
# set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%B$(username)%B$(char)%B$(hostname) $(directory) %B$(symbol) %B$(arrows)%b '
RPROMPT='$(git_prompt_info)'

# vim:set ft=sh ts=4 sw=4 noet:

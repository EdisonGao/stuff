# Show current hg bookmark
function hgproml {
  # here are a bunch of colors in case
  # you want to get colorful
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  local LIGHT_CYAN="\[\033[1;36m\]"

  local RESET_COLOR="\[\033[0m\]"

  export PS1="\
$RED[\u:$WHITE\w$LIGHT_CYAN:\$(parse_hg_branch)$LIGHT_GRAY changes:\$(hg status 2> /dev/null | wc -l)$RED]\
\$$RESET_COLOR "
PS2='> '
PS4='+ '
}
hgproml

alias hgemacs='~/hgemacs'

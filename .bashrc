# .bashrc
if [ -z "$PS1" ]; then
  return
fi


#long history file
export HISTFILESIZE=20000
export HISTSIZE=20000
# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups

# append history entries..
shopt -s histappend

# After each command, save and reload history
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

#alias g="git"

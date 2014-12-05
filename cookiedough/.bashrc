#
# Want better history saving
#
# append to the history file, don't overwrite it
shopt -s histappend
# don't put duplicate lines or lines starting with space in the history.
export HISTCONTROL=ignoreboth
# bigger is better.  Seriously. Keep everything.
export HISTFILESIZE=400000000
export HISTSIZE=10000
# append history on each new command
export PROMPT_COMMAND="history -a"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc

export PATH=$(dirname $(pythonz locate 2.7.8)):$PATH
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source $(dirname $(pythonz locate 2.7.8))/virtualenvwrapper.sh

export PATH=~/.bin:~/.bin/openoffice:$PATH
#if [ $TERM == 'xterm' ]; then
#    export TERM='xterm-256color'
#fi

# Check for an interactive session
[ -z "$PS1" ] && return

relpwd() {
    ~/.bin/pathcrop `echo -n $(pwd | sed s,$HOME,~,)`
}

PS1='$(relpwd)>> '
PAGER=less

. ~/.bash.private
. ~/.bash_aliases
. ~/.bash_functions

export PYTHONPATH=~/.syspath:$PYTHONPATH

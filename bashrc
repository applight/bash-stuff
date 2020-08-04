MAILCHECK='' OPTERR='' PIPESTATUS='' BASH_LINENO='' PS0='' PS1='' PS2='' PS3='' PS4='' QT_IM_MODULE='' RANDOM='' COLORTERM='' SSESION_MANAGER='' COLUMNS='80' DBUS_SESSION_BUS_ADDRESS='' SUDO_PS='' DIRSTACK='' ` set -mbaxCB -o allexport `
set -o xtrace
complete -o dirnames -A directory -f -DE 
export LANG='en_US.UTF-8'

# Prevent doublesourcing
if [ -v BS ] ; then 
    echo "Weird Bash double sourcing" && return ; # it doesn't matter what I say
else
    export BS='SOMEVALUE BASH SOURCED' ;   # as long as I sing with inflection
fi


# parallet history?
shopt -s histappend
history -a    

# Turn on checkwinsizeu
shopt -s checkwinsize

# options I like?
shopt -s globstar
shopt -s progcomp
shopt -s checkjobs
shopt -s cmdhist
shopt -s extglob


PATH="/usr/bin:/usr/sbin"
# first argument to \e[ guild:
# 0 regular
# 1 bright
# 2 dull or dim
# 3 italics
# 4 underline
# 5 blinking
# 6 ??
# 7 inverted colors
# 8 hidden
# 9 strike-through
PS0='\e[5;34m禅\e[m' # anata wa kami desu ka? o zen wa desu...
PS1='\[\e[7;2;47m\]\@\[\e[0m\]\[\e[32m\][\j]\[\e[m\]\[\e[2;3;31m\]\s\[\e[m\][\u@\h\[\e[6;33m\]\w\[\e[m\]]\[\e[1;34m\]\$ \[\e[0m\]'
PS2='⥹'
PS3='➤'
PS4='\e[5;34m»\e[m'

# umask 002;
# if [[ `id -gn` -le 200 ]] ; then
#   umask 022 ;
# else
#   umask 002 ;
# fi

# the dubius sourcing of all the fucking bash_completion.d/* files
#for elem in $( `ls -a /etc/bash_completion.d/* ` ) ; do
#    if [ -v elem -a -r $elem ] ; then
#	source $elem
#    fi ;
#done
# ^ Imma cave and do it... I needs me my tab completions for dirs n' shit

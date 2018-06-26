#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

PS1='\n[\u@\h \w]\$ '
PS1='\n[\u@\h \w]\n  \$ '
# PS1='\n[\u@\h \W]\$ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

alias ls='ls --color=auto'

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

force_color_prompt=yes

LS_COLORS="no=00:fi=00;37:di=00;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=01;05;37;41:ex=00;32:\
    .sh=00;33:.cpp=00;33:.py=00;33:.c=00;33:.java=00;33:.h=00;36:\
    .tar=01;35:.tgz=01;35:.taz=01;35:.zip=01;35:.gz=01;35:.bz2=01;35:.deb=01;35:.rpm=01;35:.jar=01;35:.pkg.tar.gz=01;31;35:\
    .jpg=00;32:.jpeg=00;32:.gif=00;32:.bmp=00;32:.png=00;32:\
    *.mp4=01;36:.mpg=01;36:.mpeg=01;36:.wmv=01;36:.avi=01;36:\
    *.mp3=01;36:.flac=01;36\ 29 .odt=00;31:.pdf=00;31"

# tmux setting
alias tmux="TERM=screen-256color-bce tmux"

# Start screenfetch
# screenfetch | lolcat
screenfetch

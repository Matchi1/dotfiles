# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias eclipse='~/Desktop/eclipse/eclipse'

# dwm update
alias dwm_update='sudo rm -f config.h dwm && sudo make'

# apt-get aliases
alias update='sudo apt-get update && sudo apt-get upgrade'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Current Project aliases
alias jP='cd ~/Documents/L3/semestre_1/Projet/Baba-Is-You'
alias cP='cd ~/Documents/L3/semestre_1/Projet/Image-Tree-converter'
alias aP='cd ~/Documents/L3/semestre_1/Projet/Projet_Analyse'
alias L3s1='cd ~/Documents/L3/semestre_1/'

# Logout the gnome session
alias gsq='gnome-session-quit && exit'

# Open jdk documentation
alias jdkdoc='firefox ~/jdk-15/docs/index.html' 

bind "set completion-ignore-case on"

export LC_CTYPE=en_US.UTF-8
export PS1='\[\e[0;32m\]\u\$\[\e[0m\] '
export EDITOR=/usr/bin/vim
export DISPLAY=:0.0
export PATH=$PATH:~/bin

alias ls="pwd; ls -G"
alias la="ls -A -G"
alias ll="ls -l -A -G"
alias gvim="mvim"
alias mvim="mvim -p"
alias asyv="ssh asyvtina@agahozo-shalom.org"

test -r /sw/bin/init.sh && . /sw/bin/init.sh


bind "set completion-ignore-case on"

export LC_CTYPE=en_US.UTF-8
export PS1='\[\e[0;32m\]\$\[\e[0m\] '
export EDITOR=/usr/bin/vim
export DISPLAY=:0.0
export PGUSER=postgres
export PGDATA="/Users/eric/pgdata"
export PATH=$PATH:~/bin:~/.cabal/bin
export POSTGRES_INCLUDE=/sw/include/postgresql
export LIBRARY_PATH=$LIBRARY_PATH:/sw/lib
export CPATH=$CPATH:/sw/include
export LDFLAGS=-L/sw/lib

alias ls="pwd; ls -G"
alias la="ls -A -G"
alias ll="ls -l -A -G"
alias apache="apache2ctl"
alias gvim="mvim"
alias mvim="mvim -p"
alias asyv="ssh asyvtina@agahozo-shalom.org"

test -r /sw/bin/init.sh && . /sw/bin/init.sh


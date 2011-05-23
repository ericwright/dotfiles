bind "set completion-ignore-case on"

export LC_CTYPE=en_US.UTF-8
export PS1='\[\e[0;32m\]\u\$\[\e[0m\] '
export EDITOR=/usr/bin/vim
export DISPLAY=:0.0
export PATH=/usr/local/bin:/usr/local/sbin:~/.gem/ruby/1.8/bin:$PATH
export GRAILS_HOME=/usr/local/Cellar/grails/1.3.2
export M2_HOME=/usr/local/Cellar/maven/2.2.1
export MAVEN_OPTS="-Xmx1024m -Xms512m -XX:MaxPermSize=512m"

export P4USER=ewright
export P4PASSWD=ewright
export P4CLIENT=ewright
export P4PORT=foundry:1666
export P4HOST=Eric-Wrights-MacBook-Pro.local
export P4EDITOR=mvim

alias ls="pwd; ls -G"
alias la="ls -A -G"
alias ll="ls -l -A -G"
alias gvim="mvim"
alias mvim="mvim -p --remote-tab-silent"
alias asyv="ssh asyvtina@agahozo-shalom.org"
alias killp4merge="kill `ps aux | grep p4merge | awk '{print $2}' `"


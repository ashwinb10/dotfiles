
# SSHing into ENIAC account and Biglab account
alias seniac="ssh ashwinb@eniac.seas.upenn.edu"
export eniac="ashwinb@eniac.seas.upenn.edu"

# shortcuts
alias eclipse_mvn="mvn eclipse:eclipse"

# colors
export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM="xterm-color"
export PS1='\[\033[01;35m\]\u@\h\[\033[00m\]:\[\033[01;32m\]\w\[\033[00m\]\$ '

# aliases for ls
alias ll="ls -lh"
alias la="ls -a"
alias lal="ls -alh"

# aliases for cd
alias cdhashfav="cd ~/Documents/hashfav"

# add activator to path
#export PATH=$PATH:/Users/ashwin/activator/

# hlog for git
alias hlog='git log --date-order --all --graph --format="%C(green)%h %Creset%C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset %s"'

# # powershell
# function _update_ps1() {
#     export PS1="$(~/.powerline-shell.py $? 2> /dev/null)"
# }
# export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

# java home
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home"

alias nginxconf="sudo vi /usr/local/etc/nginx/nginx.conf"

# nvm
#. ~/.nvm/nvm.sh
#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh
#nvm use --silent 5.0.0

# for npm
alias nvmi=". ~/.nvm/nvm.sh"

# to update the current time (OS time tends to get ahead)
alias update_time="sudo ntpdate -u time.apple.com"

alias hfav="ssh azureuser@hfav.cloudapp.net"
export HFAV="azureuser@hfav.cloudapp.net"

# use vim instead of vi
alias vi="vim"

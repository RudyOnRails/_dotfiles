[[ -s "/Users/administrator/.rvm/scripts/rvm" ]] && source "/Users/administrator/.rvm/scripts/rvm"  # This loads RVM into a shell session

# username@computer-name:~/code/project (branch) $
# export PS1="\[\033[00m\]\u@\h\[\033[00m\]:\[\033[00m\]\w\[\033[00m\] \`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[00m\]$\[\033[00m\] "
# git name-rev --name-only HEAD 2> /dev/null

# Put the penultimate and current directory 
# in the iterm tab
# \[\e]1;\]$(basename $(dirname $PWD))/\W\[\a\]

# Git tab completion
# source ~/git-completion.bash

# export PS1="\[\033[00m\]\w\[\033[00m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.split(%r{\n}).grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[00m\]$\[\033[00m\] "

# export PS1="\`ruby -e \"print (%x{git branch 2> /dev/null}.split(%r{\n}).grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[00m\]\w\[\033[00m\] "

# git
export PS1="\`ruby -e \"print (%x{git branch 2> /dev/null}.split(%r{\n}).grep(/^\*/).first || '').gsub(/^\* (.+)$/, '[\1]')\"\`\[\033[00m\]\[\033[00m\]\w: "
alias gphm="git push heroku master"
alias gpom="git push origin master"
alias gs="git status"
alias gm="git commit -m"
alias gd="git diff"
alias gds="gd --staged"
source ~/.git-completion.bash

# rails
alias railsnewapp="ruby ~/code/_rails_templates/railsnewapp.rb"
alias r="rails"
alias rr="rake routes"

# cd'ing
alias code="cd ~/code; ls"
alias snapclass="cd ~/code/_sidejobs/snapclass"
alias pairseed="cd ~/code/_my_projects/pairseed"
alias myprojects="cd ~/code/_my_projects/; ls"
alias learning="cd ~/code/_learning/; ls"
alias sidejobs="cd ~/code/_sidejobs/; ls"
alias dotfiles="cd ~/_dotfiles; ls -a"

# rvm
alias gemsets="rvm gemset list"

# bash
alias rebash="source ~/.bash_profile"
shopt -s autocd globstar

export PROMPT_COMMAND='echo -ne "\033]0;: ${PWD/#$HOME/~}\007"'
# export PS1="\e"
# export PS1="\e"

# nmap for sharing WiFi
alias nmap="grep ip_address /private/var/db/dhcpd_leases | cut -d= -f2 | nmap -iL - -sn"

# heroku
alias hero="heroku run --account personal"
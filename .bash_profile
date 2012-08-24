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
export PS1="\`ruby -e \"print (%x{git branch 2> /dev/null}.split(%r{\n}).grep(/^\*/).first || '').gsub(/^\* (.+)$/, '[\1]')\"\`\[\033[00m\]\[\033[00m\]\w: "

alias r="rails"
alias railsnewapp="ruby ~/code/_rails_templates/railsnewapp.rb"
alias code="cd ~/code; ls"
alias rebash="source ~/.bash_profile"
alias gphm="git push heroku master"
alias gpom="git push origin master"
alias rr="rake routes"
alias snapclass="cd ~/code/_sidejobs/snapclass"
alias pairseed="cd ~/code/_my_projects/pairseed"
alias gemsets="rvm gemset list"
alias gs="git status"

export PROMPT_COMMAND='echo -ne "\033]0;: ${PWD/#$HOME/~}\007"'
# export PS1="\e"
# export PS1="\e"

source ~/.git-completion.bash
alias myprojects="cd ~/code/_my_projects/; ls"
alias learning="cd ~/code/_learning/; ls"
alias sidejobs="cd ~/code/_sidejobs/; ls"
alias nmap="grep ip_address /private/var/db/dhcpd_leases | cut -d= -f2 | nmap -iL - -sn"
alias dotfiles="cd ~/_dotfiles; ls -a"
shopt -s autocd globstar
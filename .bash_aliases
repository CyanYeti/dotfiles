# Custom Aliases (commands)
#==========================
# Browser
#alias brave='brave-browser'
alias fire='firefox'

# Navigation
alias home='cd ~'
alias docs='cd ~/Documents/'
alias alg='cd ~/Documents/linalg/'
alias web='cd ~/Documents/web/'
alias os='cd ~/Documents/os/' 
alias c='clear'
alias b='cd ..'
alias ll='ls -al'

# Update
alias updcmds='source ~/.bashrc && source ~/.bash_aliases'

# Git
alias gstat='git status'
alias gadd='git add'
alias gcommit='git commit -m'
alias gpush='git push -u origin'

# Copy And Past using xclip
alias copy='| xclip -selection clipboard | xclip'
alias paste='xclip -o'

# Info
alias aptuse='ps aux | grep -i apt'

# Connection
alias connect='sh ~/Documents/SecureW2_JoinNow.run'

# Install 
alias untar='tar -zxvf'
alias wget='wget -c'
alias install='sudo pacman -Syu'
alias unpack='dpkg -i'

# Programming
alias py='python'
alias jrun='gradle -q run -PrunArgs='
alias vim='neovim'

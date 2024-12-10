#####################################
##==> Variables
#####################################
function shenv; set -gx $argv; end
source ~/.env

#####################################
##==> Aliases
#####################################

alias cty='tty-clock -S -c -C 6 -t -n -D'
alias fucking='sudo'
alias n='nvim'
alias t='tmux'
alias ta='tmux attach'
alias tl='tmux ls'
alias cd..='cd ..'
alias gc='git clone '
alias ga='git add .'
alias gcm='git commit -m '
alias yeet='git push -u orign main'
alias gs='git status'
alias ll-'ls -Alh'
alias ls='lsd --group-dirs first'
alias cat='bat'
alias gc='g++ -o o'
alias py='python3'
alias up='sudo pacman -Syu'
alias upy='yay -Syu'
alias clean='yay -Yc'


#####################################
##==> Custom Functions
#####################################
function wget
    command wget --hsts-file="$XDG_DATA_HOME/wget-hsts" $argv
end

function nvidia-settings
    mkdir -p $XDG_CONFIG_HOME/nvidia/
    command nvidia-settings --config="$XDG_CONFIG_HOME/nvidia/settings" $argv
end

#####################################
##==> Interactive Session Settings
#####################################
if status is-interactive

end

#####################################
##==> Shell Customization
#####################################
starship init fish | source
set fish_greeting

#####################################
##==> Development Tools
#####################################
##==> Pyenv
pyenv init - | source

#####################################
##==> Fun Stuff
#####################################
pokemon-colorscripts --no-title -s -r 1,3,6

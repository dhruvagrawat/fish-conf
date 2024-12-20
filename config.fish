﻿#####################################
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
alias meow="showcat_random"

# Short aliases for setting brightness on second monitor (card 1)
alias b0='ddcutil -d 1 setvcp 10 0'
alias b1='ddcutil -d 1 setvcp 10 1'
alias b10='ddcutil -d 1 setvcp 10 10'
alias b20='ddcutil -d 1 setvcp 10 20'
alias b30='ddcutil -d 1 setvcp 10 30'
alias b40='ddcutil -d 1 setvcp 10 40'
alias b50='ddcutil -d 1 setvcp 10 50'
alias b60='ddcutil -d 1 setvcp 10 60'
alias b70='ddcutil -d 1 setvcp 10 70'
alias b80='ddcutil -d 1 setvcp 10 80'
alias b90='ddcutil -d 1 setvcp 10 90'
alias b100='ddcutil -d 1 setvcp 10 100'



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
## mycatfunct ##

function showcat_random
    # Fetch a random cat image URL from The Cat API
    set cat_image_url (curl -s https://api.thecatapi.com/v1/images/search | jq -r '.[0].url')

    # Download the image temporarily
    set temp_image "/tmp/random_cat.jpg"
    curl -s $cat_image_url -o $temp_image

    # Display the image with icat
    icat $temp_image
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
#pokemon-colorscripts --no-title -s -r 1,3,6

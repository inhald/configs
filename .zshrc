# Debug prints
#echo "DEBUG: HOME=$HOME"
#echo "DEBUG: XDG_DATA_HOME=$XDG_DATA_HOME"

# Fix XDG if needed
export XDG_DATA_HOME="$HOME/.local/share"

# Hardcode Zinit home (ignore XDG_DATA_HOME if you want)
ZINIT_HOME="$HOME/.local/share/zinit/zinit.git"

# Initialize completions
autoload -U compinit
compinit

# Attempt to install or source Zinit
if [ ! -d "$ZINIT_HOME" ]; then
    echo "DEBUG: Zinit not found, trying to clone..."
    mkdir -p "$(dirname "$ZINIT_HOME")"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "$ZINIT_HOME/zinit.zsh"
zinit light zsh-users/zsh-autosuggestions

zinit ice depth=1
zinit light romkatv/powerlevel10k


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


source /opt/ros/humble/setup.zsh
export ROS_DOMAIN_ID=99
source /usr/share/colcon_cd/function/colcon_cd.sh
export _colcon_cd_root=/opt/ros/humble/
source /home/dhilan/ros2_ws/install/setup.zsh

#aliases
alias ls='ls --color'
alias l='ls'


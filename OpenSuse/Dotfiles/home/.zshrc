export ZSH="$HOME/.oh-my-zsh"
# Set OMZ Theme to sulfurium
#ZSH_THEME="sulfurium"

# Enable ZSH correction
ENABLE_CORRECTION="true"

# Add "sudo" ZSH plugin
plugins=(sudo node)

# Loads OMZ
source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.local/bin/:$HOME/.cargo/bin"
alias pfetch='curl -s https://raw.githubusercontent.com/dylanaraps/pfetch/master/pfetch | sh'
# Set $EDITOR 
export EDITOR="nvim"
eval "$(starship init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/woomy/.sdkman"
[[ -s "/home/woomy/.sdkman/bin/sdkman-init.sh" ]] && source "/home/woomy/.sdkman/bin/sdkman-init.sh"

# tab multiplexer configuration: https://github.com/austinjones/tab-rs/
source "/home/woomy/.local/share/tab/completion/zsh-history.zsh"
# end tab configuration

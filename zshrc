#
# Source separated zshrcs
#

# Theme
# Note that you should define any customizations before calling antigen theme
# (i.e. setting the POWERLEVEL9K_* variables) in your .zshrc.
source ~/dotfiles/zsh/zshrc.d/theme/powerlevel9k.zsh

# Zsh itself
for file in ~/dotfiles/zsh/zshrc.d/zsh/*.zsh; do
    source $file
done

# Plugin manager
source ~/dotfiles/zsh/zshrc.d/plugin_manager/antigen.zsh

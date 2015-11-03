# Use antigen
source ~/.zsh/antigen/antigen.zsh

# Cd
antigen-bundle b4b4r07/enhancd
antigen bundle mollifier/cd-gitroot

# Theme
antigen theme bhilburn/powerlevel9k powerlevel9k

# Completion
antigen bundle zsh-users/zsh-completions src

# Tell antigen that you're done.
antigen apply

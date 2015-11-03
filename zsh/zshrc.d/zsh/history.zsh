# Set history file location
export HISTFILE=~/.zsh_history

# Set the number of history
export HISTSIZE=100000
export SAVEHIST=100000

# Don't save duplicated history
setopt hist_ignore_all_dups

# Save history with beginning timestamp and elapsed time
setopt extended_history

# Share history among zsh sessions
setopt share_history

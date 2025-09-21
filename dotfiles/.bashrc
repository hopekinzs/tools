# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc
source ~/.local/bin/bash/aliases
#~/.bashrc

# Detect terminal and run fastfetch differently
if [[ "$TERM_PROGRAM" == "WezTerm" ]] || [[ "$TERM" == "xterm-kitty" ]]; then
  # WezTerm or Kitty → show image
  fastfetch --kitty-direct /home/hopekinzs/Pictures/xwing.png
else
  # Default → use config.jsonc
  fastfetch --config /home/hopekinzs/.config/fastfetch/config.jsonc
fi

# to ssh git on boot
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
#
# Use VSCode instead of neovim as your default editor
# export EDITOR="code"
#
# Set a custom prompt with the directory revealed (alternatively use https://starship.rs)

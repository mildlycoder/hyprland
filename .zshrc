# Set the theme
# ~/.zshrc

eval "$(starship init zsh)"
# Enable plugins
plugins=(
  git
)

# Load Oh My Zsh from the Nix store
source /run/current-system/sw/share/oh-my-zsh/oh-my-zsh.sh

# Enable autosuggestions and syntax highlighting
source /run/current-system/sw/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /run/current-system/sw/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"

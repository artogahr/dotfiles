# Change kitty theme
kitty +kitten themes --reload-in=all Catppuccin-Latte

# Change neovim theme
sed -i 's/catppuccin-frappe/catppuccin-latte/g' ~/.dotfiles/nvim/lua/user/colorscheme.lua

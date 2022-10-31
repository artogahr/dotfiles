# Change kitty theme
kitty +kitten themes --reload-in=all Catppuccin-Frappe

# Change neovim theme
sed -i 's/catppuccin-latte/catppuccin-frappe/g' ~/.dotfiles/nvim/lua/user/colorscheme.lua

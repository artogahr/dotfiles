# Change kitty theme
kitty +kitten themes --reload-in=all Catppuccin-Frappe

# Change neovim theme
sed -i 's/catppuccin-latte/catppuccin-frappe/g' ~/workplace/dotfiles/nvim/lua/custom/plugins/init.lua

fish -c "yes | fish_config theme save Catppuccin\ Frappe"

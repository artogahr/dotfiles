# Change kitty theme
kitty +kitten themes --reload-in=all Catppuccin-Latte

# Change neovim theme
sed -i 's/catppuccin-frappe/catppuccin-latte/g' ~/workplace/dotfiles/nvim/lua/custom/plugins/init.lua

fish -c "yes | fish_config theme save Catppuccin\ Latte"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source

fzf --fish | source

abbr -a b --function projectdo_build
abbr -a r --function projectdo_run
abbr -a t --function projectdo_test
abbr -a p --function projectdo_tool

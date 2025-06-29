# https://github.com/junegunn/fzf
if type -q fzf
    fzf --fish | source
else
    set_color red
    echo "fzf is not installed" >&2
    set_color normal
end

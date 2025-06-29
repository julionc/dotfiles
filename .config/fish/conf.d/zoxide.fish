# https://github.com/ajeetdsouza/zoxide
if type -q zoxide
    zoxide init fish | source
else
    set_color red
    echo "zoxide is not installed" >&2
    set_color normal
end

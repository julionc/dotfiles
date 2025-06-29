# https://atuin.sh
if type -q atuin
    atuin init fish | source
else
    set_color red
    echo "atuin is not installed" >&2
    set_color normal
end

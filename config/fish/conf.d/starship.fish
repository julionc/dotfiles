# https://github.com/starship/starship#fish
if type -q starship
    starship init fish | source
else
    set_color red
    echo "starship is not installed" >&2
    set_color normal
end

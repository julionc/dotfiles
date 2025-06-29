# https://github.com/eza-community/eza
if not type -q eza
    set_color red
    echo "eza is not installed" >&2
    set_color normal
end

# eza
abbr -a ls 'eza --color=always --group-directories-first'
abbr -a ll 'eza -lF --group-directories-first'
abbr -a la 'eza -laF --group-directories-first'
abbr -a lsd 'eza -d */'
abbr -a lt 'eza -T --level=2'

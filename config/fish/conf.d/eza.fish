# https://github.com/eza-community/eza
if not type -q eza
    set_color red
    echo "eza is not installed" >&2
    set_color normal
end

# eza
abbr -a l 'eza -lh --group-directories-first --icons=auto' # long list
abbr -a la 'eza -1 --group-directories-first --icons=auto' # short list
abbr -a ll 'eza -lha --icons=auto --sort=name --group-directories-first' # long list all
abbr -a ld 'eza -lhD --icons=auto' # long list dirs
abbr -a lt 'eza -T --icons=auto --level=2' # list folder as tree

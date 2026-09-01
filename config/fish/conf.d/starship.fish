# https://github.com/starship/starship

status is-interactive; or exit
if command -q starship
    set -l cache $__fish_cache_dir/starship_init.fish
    if not test -f $cache
        starship init fish --print-full-init > $cache
    end
    source $cache
else
    set_color red
    echo "starship is not installed" >&2
    set_color normal
end

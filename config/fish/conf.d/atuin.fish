# https://atuin.sh
status is-interactive; or exit
if command -q atuin
    set -l cache $__fish_cache_dir/atuin_init.fish
    if not test -f $cache
        atuin init fish > $cache
    end
    source $cache
else
    set_color red
    echo "atuin is not installed" >&2
    set_color normal
end
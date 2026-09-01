# https://github.com/ajeetdsouza/zoxide
status is-interactive; or exit
if command -q zoxide
    set -l cache $__fish_cache_dir/zoxide_init.fish
    if not test -f $cache
        zoxide init fish > $cache
    end
    source $cache
else
    set_color red
    echo "zoxide is not installed" >&2
    set_color normal
end
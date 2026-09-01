# https://github.com/junegunn/fzf
status is-interactive; or exit
if command -q fzf
    set -l cache $__fish_cache_dir/fzf_init.fish
    if not test -f $cache
        fzf --fish > $cache
    end
    source $cache
else
    set_color red
    echo "fzf is not installed" >&2
    set_color normal
end
# https://atuin.sh
if type -q atuin
    atuin init fish | source
else
    perror "atuin is not installed"
end

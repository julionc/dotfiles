# https://github.com/ajeetdsouza/zoxide
if type -q zoxide
    zoxide init fish | source
else
    perror "zoxide is not installed"
end

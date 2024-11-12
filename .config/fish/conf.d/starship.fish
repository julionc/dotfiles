# https://github.com/starship/starship#fish
if type -q starship
    starship init fish | source
else
    perror "starship is not installed"
end

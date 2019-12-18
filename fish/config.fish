set -e fish_greeting

# iTerm integration
if test (uname) = 'Darwin'
	source "$HOME/.config/fish/iterm2_shell_integration.fish"
	set PATH $PATH "$HOME/.iterm2"
end

# abbv
abbr -a gst git status
abbr -a giff git diff
abbr -a j z

# StarShip
starship init fish | source

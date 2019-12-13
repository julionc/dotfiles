set -e fish_greeting

# iTerm integration
if test (uname) = 'Darwin'
	source "$HOME/.config/fish/iterm2_shell_integration.fish"
	set PATH $PATH "$HOME/.iterm2"
end

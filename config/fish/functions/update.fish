function update --description "Update OS"
    # Detect operating system
    set os (uname)

    if test "$os" = "Darwin"
        echo "Updating macOS with Homebrew..."
        if type -q brew
            brew update && brew upgrade && brew cleanup
        else
            echo "Homebrew is not installed."
        end

    else if test -f /etc/arch-release
        echo "Updating Arch Linux with pacman..."
        sudo pacman -Syu

    else if test -f /etc/debian_version
        echo "Updating Debian/Ubuntu with apt..."
        sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

    else
        echo "Unsupported operating system: $os"
    end
end


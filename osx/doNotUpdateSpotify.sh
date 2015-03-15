# This script prevents Spotifys Autoupdating on OS X (testet on Yosemite)
# Based on this tutorial:
# http://supraliminal.net/blog/2013/4/21/how-to-revert-back-to-the-older-better-spotify-client
#
# This script must be run as root:
# sudo sh doNotUpdateSpotify.sh
#

FILE="/tmp/out.$$"
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root"
   echo "-------------------------------------------"
   echo "This is what you should type into terminal:"
   echo "sudo sh doNotUpdateSpotify.sh"
   exit 1
fi

filepath1="/Users/$SUDO_USER/Library/Application Support/Spotify/Spotify_new.archive"
filepath2="/Users/$SUDO_USER/Library/Application Support/Spotify/Spotify_new.archive.sig"

[[ -f "$filepath1" ]] && rm -f "$filepath1"
[[ -f "$filepath2" ]] && rm -f "$filepath2"

touch "$filepath1"
touch "$filepath2"
chflags uchg "$filepath1"  # Lock file in which the downloaded update is stored, thus preventing an update
chflags uchg "$filepath2"

echo "---------------------------------------"
echo "|  Spotify will no longer be updated  |"
echo "---------------------------------------"

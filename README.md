# dotfiles

Config files for fish, git, personal toolbox and so on.

## Install

Run this:

```sh
git clone https://github.com/julionc/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

```sh
ln -nsf ~/.dotfiles/config ~/.config
```

## Shell

### Fish

```properties
brew install fish  
curl -L https://get.oh-my.fish | fish
sudo bash -c 'echo $(which fish) >> /etc/shells'
chsh -s $(which fish)
```

Add brew binaries in fish path run the command: `fish_add_path /opt/homebrew/bin`

# Mac OSX

See `osx/readme.md`.

# Browser

## Extensions

- [ChroPath](https://chrome.google.com/webstore/detail/chropath/ljngjbnaijcbncmcnjfhigebomdlkcjo)
- [I don't care about cookies](https://chrome.google.com/webstore/detail/i-dont-care-about-cookies/fihnjjcciajhdojfnbdddfaoknhalnja)
- [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi)
- [Simple Vimeo Downloader](https://chrome.google.com/webstore/detail/simple-vimeo-downloader/mffmjlddchdccijipncbjhoabgmphjfb)
- [Vue.js devtools](https://chrome.google.com/webstore/detail/vuejs-devtools/ljjemllljcmogpfapbkkighbhhppjdbg)
- [Keyword Surfer](https://chrome.google.com/webstore/detail/keyword-surfer/bafijghppfhdpldihckdcadbcobikaca)
- [SEO META in 1 CLICK](https://chrome.google.com/webstore/detail/seo-meta-in-1-click/bjogjfinolnhfhkbipphpdlldadpnmhc)
- [Keywords Everywhere - Keyword Tool](https://chrome.google.com/webstore/detail/keywords-everywhere-keywo/hbapdpeemoojbophdfndmlgdhppljgmp)
- [Copy All Urls](https://chrome.google.com/webstore/detail/copy-all-urls/djdmadneanknadilpjiknlnanaolmbfk)
- [YouTube NonStop](https://chrome.google.com/webstore/detail/youtube-nonstop/nlkaejimjacpillmajjnopmpbkbnocid)

## Thanks

I forked from [Zach Holman](https://github.com/holman/dotfiles), which again forked from [Ryan Bates](http://github.com/ryanb)' excellent
[dotfiles](https://github.com/ryanb/dotfiles)

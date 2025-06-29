alias cp='cp -rv'
alias mv='mv -v'
alias mkdir='mkdir -p'
alias mmv='noglob zmv -W'
alias grep='grep -I --color=auto'
alias po=popd
alias pu=pushd
alias tree='tree --noreport --dirsfirst -F'
alias t='ctags -R'
alias vt='v -t'
alias vv='v -c "EditConfig"'

# youtube-dl
alias ytd='youtube-dl'
alias yta='youtube-dl -x --audio-quality 0 '
alias yt2mp3='youtube-dl -x --audio-format mp3'
alias yt2mp4='youtube-dl --format mp4 --max-quality mp4'

# ls {{{1

#alias ls='ls -CFh --color=auto'
alias ls='ls -CFhG'
alias lsa='ls -la'
alias lsh='ls -d .*'                       # Show hidden files
alias lsd='ls -d *(/)'                     # Show directories
alias lse='ls -d *(/^F)'                   # Show empty directories
alias lsw='ls -d *(R,W,X.^/)'              # Show world-accessible files
alias lss='ls *(s,S,t)'                    # Show setgid/setuid/sticky flag
alias lsl='ls *(@)'                        # Show symlinks
alias lsx='ls *(*)'                        # Show executables
alias lsdf='ls --group-directories-first'  # Show directories first
alias lsnew='ls -t *(.om[1,10])'           # Show newest files
alias lsold='ls -rt *(.om[1,10])'          # Show oldest files
alias lsbig='ls -S *(.OL[1,10])'           # Show biggest files

alias la='ls -A'
alias lad='la -d *(D/)'                    # Show directories
alias lae='la -d *(D/^F)'                  # Show empty directories
alias law='la -d *(DR,W,X.^D/)'            # Show world-accessible files
alias lal='la -d *(D@)'                    # Show symlinks
alias las='la *(Ds,S,t)'                   # Show setgid/setuid/sticky flag
alias lax='la *(D*)'                       # Show executables
alias ladf='la --group-directories-first'  # Show directories first
alias lanew='la -t *(D.om[1,10])'          # Show newest files
alias laold='la -rt *(D.om[1,10])'         # Show oldest files
alias labig='la -S *(D.OL[1,10])'          # Show biggest files

alias ll='ls -l'
alias llh='ll -d .*'                       # Show hidden files
alias lld='ll -d *(/)'                     # Show directories
alias lle='ll -d *(/^F)'                   # Show empty directories
alias llw='ll -d *(R,W,X.^/)'              # Show world-accessible files
alias lll='ll -d *(@)'                     # Show symlinks
alias lls='ll *(s,S,t)'                    # Show setgid/setuid/sticky flag
alias llx='ll *(*)'                        # Show executables
alias lldf='ll --group-directories-first'  # Show directories first
alias llnew='ll -t *(.om[1,10])'           # Show newest files
alias llold='ll -rt *(.om[1,10])'          # Show oldest files
alias llbig='ll -S *(.OL[1,10])'           # Show biggest files

alias lla='ll -A'
alias llad='lla -d *(D/)'                    # Show directories
alias llae='lla -d *(D/^F)'                  # Show empty directories
alias llaw='lla -d *(DR,W,X.^D/)'            # Show world-accessible files
alias llal='lla -d *(D@)'                    # Show symlinks
alias llas='lla *(Ds,S,t)'                   # Show setgid/setuid/sticky flag
alias llax='lla *(D*)'                       # Show executables
alias lladf='lla --group-directories-first'  # Show directories first
alias llanew='lla -t *(D.om[1,10])'          # Show newest files
alias llaold='lla -rt *(D.om[1,10])'         # Show oldest files
alias llabig='lla -S *(D.OL[1,10])'          # Show biggest files

# zmv {{{1

alias zcp='zmv -C'
alias zln='zmv -L'

# du {{{1

alias duh='du -slh'                 # Human-readable
alias dub='du -slb'                 # Bytes
alias duk='du -slk'                 # Kilobytes
alias dum='du -slm'                 # Megabytes
alias dug='du -sl --block-size=1G'  # Gigabytes

# df {{{1

alias dfh='df -PTh'                 # Human-readable
alias dfb='df -PT --block-size=1'   # Bytes
alias dfk='df -PTk'                 # Kilobytes
alias dfm='df -PTm'                 # Megabytes
alias dfg='df -PT --block-size=1G'  # Gigabytes

alias reload="exec $SHELL -l"

alias dm="docker-machine"
alias db="docker build -t \"${PWD##*/}\" ."
alias docker-purge="docker rm -f $(docker ps -qa); docker rmi -f $(docker images -qa)"

alias apu="apm update --no-confirm"
alias neo="neofetch --backend iterm2"
alias atom="code"
alias ss="unimatrix -n -s 96 -a"

alias grep=egrep

alias kc="kubectl"
alias kx="kubectx"
alias kn="kubens"
alias kw="watch -c -d -t kubectl"

alias wpu="/Users/rcreasey/.dotfiles/system/random-wallpaper"
test -e "${HOME}/.cache/wal/sequences" && (cat $HOME/.cache/wal/sequences &)




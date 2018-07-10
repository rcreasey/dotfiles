alias dm="docker-machine"
alias db="docker build -t \"${PWD##*/}\" ."
alias docker-purge="docker rm -f $(docker ps -qa); docker rmi -f $(docker images -qa)"

alias apu="apm update --no-confirm"

alias wpu="wal -i $HOME/Pictures/Wallpaper/pywal -e"  
test -e "${HOME}/.cache/wal/sequences" && (cat $HOME/.cache/wal/sequences &)




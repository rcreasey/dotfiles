alias ls="exa"
alias ll="exa -l"
alias la="exa -a"
alias lg="exa --long --grid"

alias tree="exa --tree"

alias dm="docker-machine"
alias db="docker build -t \"${PWD##*/}\" ."
alias docker-purge="docker rm -f $(docker ps -qa); docker rmi -f $(docker images -qa)"

alias apu="apm update --no-confirm"
alias wpu="wal -i $HOME/Pictures/Wallpaper/pywal"  
(cat ~/.cache/wal/sequences &)




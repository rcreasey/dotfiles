# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias dm="docker-machine"
alias apu="apm update --no-confirm"
alias docker-purge="docker rm -f $(docker ps -qa); docker rmi -f $(docker images -qa)"

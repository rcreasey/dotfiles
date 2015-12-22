# init according to man page
if (( $+commands[pyenv] ))
then
  export PATH="$HOME/.pyenv/bin:$PATH"
  eval "$(pyenv init -)"
fi

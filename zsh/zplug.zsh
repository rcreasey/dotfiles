export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# plugins
zplug "mafredri/zsh-async", from:"github", use:"async.zsh"

zplug "b4b4r07/enhancd", use:init.sh
zplug "supercrabtree/k"

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"

# prompt
zplug "sindresorhus/pure"

zplug check || zplug install

zplug load

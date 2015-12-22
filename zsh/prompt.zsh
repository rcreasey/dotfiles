autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      # echo "on %{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
      echo "%F{075}(branch:$(git_prompt_info))%{$reset_color%}"
    else
      echo "%F{075}(branch:$(git_prompt_info)%F{214}*%F{075})%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " %{$fg_bold[magenta]%}*%{$reset_color%} "
  fi
}

directory_name() {
  echo "%F{032}$(pwd)/%{$reset_color%}"
}

export PROMPT=$'$(directory_name)$(git_dirty)$(need_push)%F{105}»%{$reset_color%} '
# export PROMPT='%F{032}${prompt_pwd}%f${git_info:+${(e)git_info[prompt]}}%(!. %B%F{red}#%f%b.)${editor_info[keymap]} '

set_prompt () {
  export RPROMPT="%{$fg_bold[cyan]%}%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}

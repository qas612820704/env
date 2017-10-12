# The following lines were added by compinstall
zstyle :compinstall filename '/home/lego/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# Git Prompt
source ~/zsh-git-prompt/zshrc.sh

# End of lines configured by zsh-newuser-install
autoload -U colors && colors
PROMPT='%{$fg[green]%}%n%{$reset_color%}%{$fg[white]%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~%{$reset_color%} $(git_super_status) %# '
# PROMPT="%{$fg[green]%}%n%{$reset_color%}%{$fg[white]%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%# "

# Alias
source $HOME/.aliases

# Syntex Highlight
uname_a=$(uname -a)
if [[ $uname_a == *"Linux"* ]] ; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [[ $uname_a == *"BSD"* ]] ; then
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Virtualenv
export WORKON_HOME=~/.venvs
if [ -f /usr/bin/virtualenvwrapper.sh ] ; then
  source /usr/bin/virtualenvwrapper.sh
elif [ -f /usr/local/bin/virtualenvwrapper.sh ] ; then
  source /usr/local/bin/virtualenvwrapper.sh
fi

# automatic ls when cd
chpwd() ls -l

# ELECTRON
export ELECTRON_TRASH=trash-cli

autoload zkbd

bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char

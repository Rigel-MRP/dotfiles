export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"
export PGHOST="/var/run/postgresql"


HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=50000

# comandos repitidos consecutivos vão salvos apenas uma vez no historico
setopt HIST_IGNORE_DUPS

# não salva comandos listados no historico
HISTORY_IGNORE=("cd" "ç" ".." "..." "ls" "la" "ll" "clear" "clr" "exit" "e" "reboot" "btop")

# salva os comandos no historico mesmo sem encerrar a sessão
setopt inc_append_history

# inicia o compinit (autocompletação)
autoload -Uz compinit && compinit

# se ~/.aliases existir, ler 
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi


if [[ $EUID -eq 0 ]]; then
  PROMPT='%n@%m:%~# '
else
  PROMPT='%n@%m:%~$ '
	fi

export PS1='\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h: \[\033[33;1m\]\W\[\033[m\]\$ '
#export CLICOLOR=1
#export LS_COLORS='ExFxBxDxCxegedabagacad'
#LS_COLORS='di=1;33'; export LS_COLORS
#Os temas do oh-my-posh estao em: /home/edkallenn/.cache/oh-my-posh/themes
#eval "$(~/posh/./oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/rudolfs-dark.omp.json)"
#eval "$(~/posh/./oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/amro.omp.json)"

# Adiciona oh-my-posh ao PATH  --> nova configuração com novo script do oh-my-posh
export PATH="$PATH:$HOME/.oh-my-posh"

# Inicializa oh-my-posh
eval "$(oh-my-posh init bash --config $HOME/.cache/oh-my-posh/themes/nomedotema.omp.json)"

neofetch

# Boas Vindas.
echo '   _ '
echo '  *v* *** BEM VINDO AO '`hostname`' ***'
echo ' /(_)\ '
echo '  ^ ^ ' `date`
echo ' '

#Sistema
echo '    '
echo '  *** Sistema: '`uname -a`' ***'
echo '   '
#echo '  *** Usuario: '`who -m`' ***'
echo '  *** Usuário: '`whoami`' ***'
echo '   '
echo '  *** Endereços IP: '`hostname -i`' ***'
echo '   '
echo '   _ '
#fortune | cowsay -f tux

export HISTSIZE=2000

alias ls='ls --color'
#LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
#LS_COLORS='di=7;32:fi=32:ln=4;32:pi=5;32:so=5;32:bd=5;32:cd=5;32:or=5;32:mi=5;32:ex=1;32:*.png=1;4;32:*.jpg=1;4;32'
LS_COLORS='di=1;33:fi=0:ex=92'
export LS_COLORS
#EXPORT DISPLAY=:0  #Para o WSL 'visual' usando Xming

#export DISPLAY=localhost:0.0   # alterado em 15/03 por Ed
export LIBGL_ALWAYS_INDIRECT=1
export DISPLAY=$(hostname).local:0


#para os containers de programação
export LIBRARY_PATH=/usr/local/lib
export C_INCLUDE_PATH=/usr/local/include
export LD_LIBRARY_PATH=/usr/local/lib
export CC=clang
#export CFLAGS="-ferror-limit=1 -gdwarf-4 -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-gnu-folding-constant -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wno-unused-but-set-variable -Wshadow -lcs50"
export CFLAGS="-ferror-limit=1 -gdwarf-4 -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-gnu-folding-constant -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow -lcs50"
export LDLIBS="-lcrypt -lcs50 -lm"

export GLOBAL_MAKEFILE_PATH=~


#alias
alias l='ls --color -lhF --group-directories-first'
alias les=less
alias parallel='parallel --will-cite'
alias python=python3
alias skll=run_experiment
alias which-command=whence
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias less='less -R'
alias git-diff='git diff --color-words'
alias ..='cd ..'
alias srcrc='source ~/.bashrc'
alias ll='ls -l --group-directories-first'
alias la='ls -A'
alias lla='ll -A'
alias lsdir='ls -d */'
alias lx='ls -lXB'
alias lsize='ls -lSr'
alias ltime='ls -ltcr'
alias ldate='ls -ltr'
alias lr='ls -lR'
alias tree='tree -Csu'
alias grep='grep --color'
alias list='ls -1'
alias lsexec='ls -F | grep "*"'
alias df='df -Th'
alias du='du -h'
alias dusort='du -s -BM * | sort -n'
alias free='free -h'
alias cache_clear='sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches" '
alias sort='LC_ALL=C sort'
alias c='clear'

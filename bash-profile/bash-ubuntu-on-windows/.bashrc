export PS1='\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h: \[\033[33;1m\]\W\[\033[m\]\$ '
#export CLICOLOR=1
#export LS_COLORS='ExFxBxDxCxegedabagacad'
#LS_COLORS='di=1;33'; export LS_COLORS
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
echo '  *** Endereços IP: '`hostname -I`' ***'
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

export DISPLAY=localhost:0.0

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

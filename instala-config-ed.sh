#!/bin/bash
principal() {
	echo "Script de inicialização do Ed"
	sleep 2
	apt-get update
	apt-get install git -y
	apt-get install nano -y
	apt-get install vim -y
	apt-get install iputils-ping -y
	cd /home/edkallenn/
	pasta='./FerramentasProgramacao/'

	if [ -d $pasta ]; then
    	echo "O diretório $pasta já existe"
		copiar
	else
    		git clone https://github.com/ed1rac/FerramentasProgramacao.git
    		copiar
	fi
	executa
}

copiar() {
    raiz='/home/edkallenn/FerramentasProgramacao/'
    cd $raiz
    pwd
    cp bash-profile/bash-ubuntu-on-windows/.bashrc ~ -r -f -v
    cp nano/nanorc /etc -f -v
    cp vim-temas/.vim ~ -r -f && cp vim-temas/.vimrc ~ -r -f -v
    cd ~
}

executa() {
    source .bashrc
}

principal

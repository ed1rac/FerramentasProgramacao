#!/bin/sh
principal() {
	echo "Script de inicialização Geral do Ed - Debian"
	sleep 2
	#cd /home/edkallenn/
	#read -p "Qual a pasta que vc deseja copiar o coneteudo das Ferramentas? " pasta1
	#echo 'A pasta escolhida foi: ' $pasta1
	#$pasta1 = '~'	
	apt-get install fortune -y
	cd $HOME
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
    #raiz='/home/edkallenn/FerramentasProgramacao/'
    #raiz=$pasta1'/FerramentasProgramacao/'
    #echo $raiz
    #cd $raiz
    cd $HOME/FerramentasProgramacao/
    pwd
    cp bash-profile/bash-ubuntu-on-windows/.bashrc $HOME -r -f -v
    cp nano/nanorc /etc -f -v
    cp vim-temas/.vim ~ -r -f && cp vim-temas/.vimrc $HOME -r -f -v
    cd $HOME
}

executa() {
    #cd ~
    source $HOME/.bashrc
    fortune | cowsay -f tux
}

principal

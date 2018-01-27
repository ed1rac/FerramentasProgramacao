#!/bin/bash
principal() {
	echo "Script de inicialização do Ed"
	sleep 2
	apt-get update
	apt-get install git -y
	apt-get install nano -y
	apt-get install vim -y
	apt-get install iputils-ping -y	
	#cd /home/edkallenn/
	read -p "Qual a pasta que vc deseja copiar o coneteudo das Ferramentas? " pasta1
	echo 'A pasta escolhida foi: ' $pasta1
	cd $pasta1
	sleep2
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
    raiz=$pasta1'/FerramentasProgramacao/'
    echo $raiz
    cd $raiz
    pwd
    cp bash-profile/bash-ubuntu-on-windows/.bashrc ~ -r -f -v
    cp nano/nanorc /etc -f -v
    cp vim-temas/.vim ~ -r -f && cp vim-temas/.vimrc ~ -r -f -v
    cd ~
}

executa() {
    #cd ~
    source $HOME/.bashrc
}

principal

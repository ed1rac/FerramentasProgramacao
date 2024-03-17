#!/bin/bash
principal() {
	echo "Script de inicialização do Ed"
	sleep 2
	apt update
	apt upgrade
	apt install git -y
	apt install nano -y
	apt install vim -y
	apt install iputils-ping -y
	apt install neofetch
	#cd /home/edkallenn/
	#read -p "Qual a pasta que vc deseja copiar o coneteudo das Ferramentas? (/home/edkallenn) " pasta1
	#echo 'A pasta escolhida foi: ' $pasta1
	cd $HOME	
	sleep 2
	#pasta=$HOME'/FerramentasProgramacao/'

	#if [ -d $pasta ]; then
  #  	echo "O diretório $pasta já existe"
	#	copiar
	#else
	#cd $pasta
    	git clone https://github.com/ed1rac/FerramentasProgramacao.git
    	copiar
	#fi
	executa
	copia_oh_my_posh
}

copiar() {
    #raiz='/home/edkallenn/FerramentasProgramacao/'
    #raiz=$pasta1'/FerramentasProgramacao/'	
	  raiz=$HOME'/FerramentasProgramacao/'	
    #echo $raiz	
    #cd $raiz
    cd $HOME'/FerramentasProgramacao/'
    pwd
    cp bash-profile/bash-ubuntu-on-windows/.bashrc ~ -r -f -v
    cp nano/nanorc /etc -f -v
    cp vim-temas/.vim ~ -r -f && cp vim-temas/.vimrc ~ -r -f -v
    cd ~
}

executa() {
  #cd ~
	echo "Instalação do Fortunes-b e o Cowsay"
	apt-get install fortunes-br
	apt install cowsay	
	echo "export DISPLAY=:0" >> $HOME/.bashrc  	#Para o WSL 'visual' usando Xming
	echo "/usr/games/fortune | /usr/games/cowsay -f tux" >> ~/.bashrc
  	source $HOME/.bashrc
  	cd $HOME
  	#xrandr -s aResoluçãoEscolhida >> .profile  # linha para configurar a resolução no Bodhi Linux
}

copia_oh_my_posh(){
	#curl -s https://ohmyposh.dev/install.sh | bash -s
	curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~
	~/oh-my-posh font install 3270
	~/oh-my-posh font install CascadiaCode
	~/oh-my-posh font install Arimo
	~/oh-my-posh font install DroidSansMono
	#oh-my-posh init bash --config /amro.omp.json
	eval "$(~/oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/amro.omp.json)"
}

principal

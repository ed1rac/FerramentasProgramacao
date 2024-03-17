#!/bin/bash
principal() {
	echo "Alterando o prompt"
	sleep 2
	copia_oh_my_posh
}

copia_oh_my_posh(){
	#curl -s https://ohmyposh.dev/install.sh | bash -s
	curl -s https://ohmyposh.dev/install.sh | bash -s -- -d /home/vscode
	~/oh-my-posh font install 3270
	~/oh-my-posh font install CascadiaCode
	~/oh-my-posh font install Arimo
	~/oh-my-posh font install DroidSansMono
	#oh-my-posh init bash --config /amro.omp.json
	eval "$(~/oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/amro.omp.json)"
}

principal
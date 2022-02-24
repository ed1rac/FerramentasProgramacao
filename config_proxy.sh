#!/bin/bash
principal(){
echo "Script de configuração do proxy do Ed"
sleep 2
arquivo="/etc/apt/apt.conf.d/80proxy"
if [ -f $arquivo ]; then
	echo "O arquivo $arquivo já existe"  		
else
	proxy
fi
executa
}

proxy(){
	touch /etc/apt/apt.conf.d/80proxy
	echo "Acquire::http::proxy  \"http://<usuario>:<senha>@proxy.incolume.com.br:3128/\";" >> /etc/apt/apt.conf.d/80proxy
	echo "Acquire::ftp::proxy   \"http://<usuario>:<senha>@proxy.incolume.com.br:3128/\";" >> /etc/apt/apt.conf.d/80proxy
	echo "Acquire::https::proxy \"http://<usuario>:<senha>@proxy.incolume.com.br:3128/\";" >> /etc/apt/apt.conf.d/80proxy
	echo "export https_proxy=http://username:password@proxy.incolume.com.br:3128" >> ~/.bashrc
	echo "export http_proxy=http://username:password@proxy.incolume.com.br:3128" >> ~/.bashrc
	echo "export ftp_proxy=http://username:password@proxy.incolume.com.br:3128" >> ~/.bashrc	
}

executa() {
    #cd ~
    echo "Script executado com sucesso"
    source $HOME/.bashrc
    #EXPORT DISPLAY=:0  #Para o WSL 'visual' usando Xming
}

principal

#!/bin/bash

# Nome do arquivo a ser criado
ARQUIVO="instala-config-ed.sh"

# Cria o arquivo vazio
touch $ARQUIVO

# Baixa o script de instalação do GitHub e sobrescreve o arquivo local
sudo curl -L https://raw.githubusercontent.com/ed1rac/FerramentasProgramacao/master/instala-config-ed.sh -o $ARQUIVO

# Dá permissão de execução
sudo chmod +x $ARQUIVO

# Executa o script
sudo ./$ARQUIVO

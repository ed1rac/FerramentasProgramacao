#!/bin/bash

ARQUIVO="instala-config-ed.sh"
URL="https://raw.githubusercontent.com/ed1rac/FerramentasProgramacao/master/instala-config-ed.sh"

# Função para log colorido
log() {
  echo -e "\033[1;34m[INFO]\033[0m $1"
}

erro() {
  echo -e "\033[1;31m[ERRO]\033[0m $1"
}

sucesso() {
  echo -e "\033[1;32m[OK]\033[0m $1"
}

log "Criando o arquivo $ARQUIVO..."
touch $ARQUIVO || { erro "Falha ao criar o arquivo."; exit 1; }
sucesso "Arquivo criado com sucesso."

log "Baixando script de instalação de $URL..."
sudo curl -L "$URL" -o "$ARQUIVO" || { erro "Falha ao baixar o script."; exit 1; }
sucesso "Download concluído."

log "Tornando o script executável..."
sudo chmod +x "$ARQUIVO" || { erro "Falha ao definir permissão."; exit 1; }
sucesso "Permissões aplicadas."

log "Executando o script..."
sudo ./"$ARQUIVO" || { erro "Erro ao executar o script."; exit 1; }
sucesso "Script executado com sucesso!"

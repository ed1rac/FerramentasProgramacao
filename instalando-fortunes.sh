#!/bin/bash
echo "Instalação do Fortunes-b e o Cowsay"
sudo apt-get install fortunes-br
sudo apt install cowsay
echo "/usr/games/fortune | /usr/games/cowsay -f tux" >> ~/.bashrc

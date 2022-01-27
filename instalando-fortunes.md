## Fortunes em Português:

`sudo apt-get install fortunes-br`

Em seguida, para o cowsay:

`sudo apt install cowsay`

Depois, edita-se o `.bashrc` e inclui a linha:

`fortune | cowsay -f tux`

### Correção da linha

A linha correta no `.bashrc` é:

`/usr/games/fortune | /usr/games/cowsay -f tux`

- instala Xming (no Windows)

Depois: (na VM, no contêiner ou no WSL2)

```
sudo apt install openssh-server
ssh
sudo service ssh --full-restart
sudo apt-get install x11-apps
EXPORT DISPLAY=:0
```

- Depois no `.bashrc`:

`EXPORT DISPLAY=:0`

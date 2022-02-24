> É possível executar o **`FerramentasProgramacao\config_proxy.sh`** ou...
# Configuração do `apt` pra autenticar no proxy
- no arquivo /etc/apt/apt.conf.d/80proxy

```Shell
Acquire::http::proxy  "http://<usuario>:<senha>@proxy.incolume.com.br:3128/";
Acquire::ftp::proxy   "http://<usuario>:<senha>@proxy.incolume.com.br:3128/";
Acquire::https::proxy "http://<usuario>:<senha>@proxy.incolume.com.br:3128/";
```

# Variáveis de ambiente

```shell
export http_proxy=http://<usuario>:<senha>@proxy.incolume.com.br:3128/
export https_proxy=http://<usuario>:<senha>@proxy.incolume.com.br:3128/
export ftp_proxy=http://<usuario>:<senha>@proxy.incolume.com.br:3128/
```
## Informações
- Entretanto tudo que foi apresentado até agora é volátil, ou seja, desaparece após o logout. 
- Para tornar esta configuração permanente, há duas formas:

### Formas
> A primeira por usuário, usando o usuário logado como exemplo, acrescente a configuração ao arquivo ~/.bashrc, ou ao arquivo ~/.bash_profile.

```shell
export https_proxy=http://proxy.incolume.com.br:3128
export http_proxy=http://proxy.incolume.com.br:3128
export ftp_proxy=http://proxy.incolume.com.br:3128
```

> Se o proxy for autenticado, acrescente:

```shell
export https_proxy=http://username:password@proxy.incolume.com.br:3128
export http_proxy=http://username:password@proxy.incolume.com.br:3128
export ftp_proxy=http://username:password@proxy.incolume.com.br:3128
```

> A segunda é no sistema, acrescente a configuração no arquivo /etc/profile.

```shell
export https_proxy=http://proxy.incolume.com.br:3128
export http_proxy=http://proxy.incolume.com.br:3128
export ftp_proxy=http://proxy.incolume.com.br:3128
```

> Se o proxy for autenticado, acrescente:

```shell
export https_proxy=http://username:password@proxy.incolume.com.br:3128
export http_proxy=http://username:password@proxy.incolume.com.br:3128
export ftp_proxy=http://username:password@proxy.incolume.com.br:3128
```

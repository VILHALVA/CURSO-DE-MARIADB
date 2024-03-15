# MARIADB - MANUAL
## INSTALAÇÃO:
Aqui estão os passos básicos para instalar o MariaDB em sistemas Linux (especificamente Ubuntu) e Windows:

### Ubuntu:
1. **Atualize os Repositórios**:
   Abra o terminal e execute os seguintes comandos:
   ```
   sudo apt update
   sudo apt upgrade
   ```

2. **Instale o MariaDB**:
   Execute o seguinte comando para instalar o MariaDB:
   ```
   sudo apt install mariadb-server
   ```

3. **Verifique a Instalação**:
   Após a instalação, o MariaDB deve estar em execução como um serviço. Você pode verificar isso usando:
   ```
   sudo service mariadb status
   ```

4. **Configuração Inicial**:
   Execute o script de segurança do MariaDB para configurar opções de segurança iniciais, como definir uma senha para o usuário root e remover os privilégios de acesso anônimo:
   ```
   sudo mysql_secure_installation
   ```

### Windows:
1. **Baixe o Instalador**:
   Acesse o site oficial do MariaDB (https://mariadb.org/download/) e baixe o instalador para Windows.

2. **Execute o Instalador**:
   Execute o arquivo baixado e siga as instruções do assistente de instalação. Você pode optar por instalar o servidor MariaDB, MariaDB Connector/C, e outros componentes opcionais.

3. **Configuração Inicial**:
   Durante a instalação, você será solicitado a definir uma senha para o usuário root do MariaDB. Anote essa senha, pois será útil para acessar o banco de dados posteriormente.

4. **Verifique a Instalação**:
   Após a instalação, você pode verificar se o MariaDB está em execução usando o Gerenciador de Serviços do Windows.

Depois de instalar o MariaDB, você pode começar a criar bancos de dados, tabelas e executar consultas SQL. Certifique-se de consultar a documentação oficial do MariaDB para obter mais detalhes sobre sua instalação e configuração específicas para o seu sistema operacional.

## SUBINDO SERVIDOR:
Para subir o servidor MariaDB digitando comandos no prompt de comando (CMD) no Windows, siga estas etapas:

1. Abra o prompt de comando. Você pode fazer isso pressionando `Win + R`, digitando `cmd` e pressionando Enter, ou pesquisando por "cmd" no menu Iniciar e abrindo-o.

2. Navegue até o diretório onde o executável do MariaDB está localizado. Isso geralmente está dentro da pasta de instalação do MariaDB. Por padrão, o caminho pode ser algo como `C:\Program Files\MariaDB\MariaDB 10.X\bin`, onde "10.X" é a versão do MariaDB que você instalou.

3. Uma vez no diretório binário do MariaDB no prompt de comando, você pode iniciar o servidor MariaDB digitando o seguinte comando e pressionando Enter:

```
mysqld
```

4. Aguarde até que o servidor MariaDB seja iniciado. Você verá algumas mensagens de log indicando que o servidor está em execução.

Lembre-se de que, ao usar o comando `mysqld`, o servidor MariaDB será iniciado com as configurações padrão. Se você precisar especificar opções de configuração adicionais, pode fazer isso passando argumentos extras para o comando `mysqld`.

Para parar o servidor MariaDB, você pode pressionar `Ctrl + C` no prompt de comando onde o servidor está sendo executado.

## E O XAMPP?
O XAMPP é um pacote de software livre e de código aberto que facilita a criação e gerenciamento de um ambiente de desenvolvimento web local. Ele inclui várias ferramentas essenciais para o desenvolvimento web, incluindo um servidor web Apache, bancos de dados MySQL e MariaDB, PHP e Perl.

### Principais componentes do XAMPP:
1. **Apache**: O servidor web Apache é amplamente utilizado para hospedar sites e aplicativos web.

2. **MySQL e MariaDB**: Ambos são sistemas de gerenciamento de banco de dados relacionais. O XAMPP oferece suporte a ambos, permitindo que os usuários escolham qual banco de dados desejam usar em seu ambiente de desenvolvimento.

3. **PHP**: Uma linguagem de script amplamente utilizada para desenvolvimento web dinâmico.

4. **Perl**: Outra linguagem de script popular que é suportada pelo XAMPP.

### Como instalar e usar o XAMPP:
1. **Baixe o XAMPP**: Vá para o site oficial do [XAMPP](https://www.apachefriends.org/index.html) e faça o download da versão adequada para o seu sistema operacional (Windows, Linux ou macOS).

2. **Instale o XAMPP**: Execute o arquivo de instalação baixado e siga as instruções do assistente de instalação.

3. **Inicie o XAMPP**: Após a instalação, você pode iniciar o painel de controle do XAMPP e iniciar os serviços necessários, como Apache e MySQL/MariaDB.

4. **Acesse o PHPMyAdmin**: O XAMPP inclui o PHPMyAdmin, uma ferramenta de gerenciamento de banco de dados web para MySQL e MariaDB. Você pode acessá-lo digitando `http://localhost/phpmyadmin` em seu navegador.

### Como saber qual banco de dados você está usando no XAMPP:
Por padrão, o XAMPP vem configurado para usar o MySQL. No entanto, se você preferir usar o MariaDB, pode fazer isso alterando a configuração no painel de controle do XAMPP.

1. **Abra o Painel de Controle do XAMPP**: Inicie o XAMPP e abra o painel de controle.

2. **Inicie/Reinicie os Serviços**: Selecione os serviços desejados (Apache e MySQL/MariaDB) e inicie ou reinicie-os.

3. **Verifique o Status do Serviço MySQL/MariaDB**: No painel de controle do XAMPP, você verá o status do serviço MySQL/MariaDB. Se estiver rodando, significa que o XAMPP está usando o MySQL. Se estiver parado, significa que o MariaDB está sendo usado.

Dessa forma, você pode facilmente verificar qual banco de dados está sendo usado pelo XAMPP e, se desejar, alternar entre MySQL e MariaDB conforme necessário para seus projetos de desenvolvimento.
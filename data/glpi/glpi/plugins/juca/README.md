# juca GLPI plugin

<h3> Plugin em desenvolvimento para auxilio nas atividades voltadas para melhoria no nosso sistema de chamados </h3>

#           -------- Tultorial Instalação --------


Com o container rodando vamos clonar um diretorio que nos auxiliara no desenvolvimento do plugin econtrando na própria documentação do glpi. 

link: https://glpi-developer-documentation.readthedocs.io/en/master/plugins/tutorial.html


O nome do repositório se chama empty e iremos realizar os seguintes comandos para subirmos em nosso ambiente:

Acesse a pasta plugins no diretorio do glpi que ocasionalmente poderá mudar, mas que no momento se encontra em: /glpi-dev/data/glpi/glpi/plugins

Então iremos acessa-lo usando o comando: cd /glpi-dev/data/glpi/glpi/plugins

Agora iremos instalar as configurações do nosso plugin:

Acesse a pasta do empty: cd /empty
Agora digite o seguinte comando: chmod +x plugin.sh
./plugin.sh juca 0.0.1

Estamos usando o plugin.sh script no empty diretório para criar o novo plugin. 
No exemplo estamos passando o nome do plugin e o primeiro número da versão, onde o exemplo abaixo detalha melhor:

chmod +x plugin.sh => Fornece permissão completa para o arquivo plugin.sh

./plugin.sh juca 0.0.1 => criamos o nome do nosso plugin e adicionamos a versão copiando a mesma estrutura.

Agora acesse o diretorio do plugin criado, lembrando que ainda estamos no diretório do empty, sendo necessário executar o comando: "cd .." para voltar a pasta anterior.

Agora acessamos o diretório do nosso plugin que foi criado:

cd /glpi-dev/data/glpi/glpi/plugins/juca

E após isso, vamos adicionar alguns arquivos do composer para que nosso plugin funcione bem:

Basta digitar: composer install


Essa é a estrutura mínima do plugin¶
📂 glpi 
  📂 plugins 
    📂 myplugin 
       📁 ajax 
       📁 front 
       📁 src 
       📁 locales 
       📁 ferramentas 
       📁 fornecedor 
       🗋 composer.json 
       🗋 hook.php 🗋 
       LICENÇA 🗋 
       myplugin.xml 
       🗋 myplugin.png 
       🗋 Readme.md 
       🗋 setup.php


📂 front: diretório é usado para armazenar nossas ações de objeto (criar, ler, atualizar, excluir).

📂 ajax: diretório é usado para chamadas ajax.

As classes do seu plugin serão armazenadas no diretório.📂 src

As traduções do gettext serão armazenadas no diretório.📂 locales

Um diretório opcional conterá os arquivos de modelo do plugin Twig .📂 templates

📂 tools: diretório fornece alguns scripts opcionais do plugin vazio para desenvolvimento e manutenção do seu plugin. Agora é mais comum obter esses scripts de diretórios e .📂 vendor📂 node_modules

📂 vendor: diretório contém:

Bibliotecas PHP para seu plugin,

ferramentas úteis fornecidas pelo emptymodelo.

📂 node_modules: O diretório contém bibliotecas JavaScript para seu plugin.

🗋 composer.json: arquivos descreve as dependências do PHP para seu projeto.

🗋 package.json: arquivo descreve dependências de JavaScript para seu projeto.

🗋 myplugin.xml: arquivo contém descrição de dados para publicar seu plugin .

🗋 myplugin.png: a imagem é frequentemente incluída no arquivo XML anterior como uma representação para o catálogo de plug-ins GLPI

🗋 setup.php: O arquivo serve para instanciar seu plugin .

🗋 hook.php: arquivo contém as funções básicas do seu plugin (instalação/desinstalação, hooks, etc).


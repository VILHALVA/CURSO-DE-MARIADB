# CURSO DE MARIADB
👨‍⚖️MARIADB É UM SISTEMA DE GERENCIAMENTO DE BANCO DE DADOS RELACIONAL DE CÓDIGO ABERTO, DERIVADO DO MYSQL.

<img src="FOTO.png" align="center" width="400"> <br>

## CONCEITO:
O MariaDB é um sistema de gerenciamento de banco de dados relacional (RDBMS) de código aberto que é uma bifurcação (fork) do MySQL. Ele foi criado por Michael "Monty" Widenius, um dos desenvolvedores originais do MySQL, como uma alternativa ao MySQL devido a preocupações sobre a direção do projeto após a aquisição pela Oracle Corporation. O MariaDB mantém alta compatibilidade com o MySQL, o que significa que a maioria dos aplicativos e comandos SQL projetados para o MySQL pode ser usada no MariaDB com poucas ou nenhuma modificação.

Algumas das principais características e conceitos do MariaDB incluem:

1. **Sistema de Gerenciamento de Banco de Dados Relacional (RDBMS)**: O MariaDB é um sistema que gerencia dados em formato de tabela, permitindo a criação, modificação e consulta de dados armazenados em bancos de dados relacionais.

2. **Código Aberto**: O MariaDB é distribuído sob a GNU General Public License (GPL), o que significa que o código-fonte é acessível ao público e pode ser usado, modificado e distribuído livremente.

3. **Compatibilidade com o MySQL**: O MariaDB é projetado para ser altamente compatível com o MySQL, o que facilita a migração de aplicativos e bancos de dados do MySQL para o MariaDB.

4. **Recursos Avançados**: O MariaDB inclui recursos adicionais, como armazenamento de dados em coluna (ColumnStore) e otimizações de desempenho que podem beneficiar organizações que exigem alta escalabilidade e desempenho.

5. **Comunidade Ativa**: Assim como o MySQL, o MariaDB tem uma comunidade ativa de desenvolvedores e usuários que contribuem para o aprimoramento contínuo do sistema.

6. **Suporte Comercial**: Além da versão de código aberto, existem fornecedores que oferecem suporte comercial para o MariaDB, se necessário.

## SUA HISTÓRIA:
1. **Origens (2009)**:
   - MariaDB foi criado por Michael "Monty" Widenius, o mesmo desenvolvedor por trás do MySQL. Ele decidiu criar o MariaDB após se preocupar com a direção futura do MySQL, especialmente após a aquisição da MySQL AB pela Oracle Corporation.
   - O nome "MariaDB" é uma combinação do nome da filha de Monty, Maria, e "DB", abreviação para banco de dados.

2. **Fork do MySQL (2009)**:
   - Em 2009, a Sun Microsystems, que adquiriu a MySQL AB em 2008, foi adquirida pela Oracle Corporation. Monty e outros desenvolvedores ficaram preocupados com o futuro do MySQL sob a gestão da Oracle, devido a preocupações com a comunidade de código aberto e a política de licenciamento.
   - Como resultado, Monty decidiu criar um fork do MySQL, chamado MariaDB, para garantir a continuidade do desenvolvimento do MySQL como um projeto de código aberto independente.

3. **Lançamento Público (2010)**:
   - O MariaDB foi lançado publicamente em 2010, com a versão 5.1 como a primeira versão estável.
   - Ele foi disponibilizado sob os termos da GNU General Public License (GPL), mantendo seu compromisso com o código aberto e a comunidade de desenvolvedores.

4. **Evolução e Versões**:
   - O MariaDB continua a ser desenvolvido ativamente, com lançamentos regulares que trazem novos recursos, melhorias de desempenho e correções de bugs.
   - Algumas das versões mais significativas incluem o MariaDB 10.0 (2014), que introduziu o sistema de armazenamento ColumnStore, e o MariaDB 10.5 (2020), que trouxe várias melhorias de desempenho e recursos avançados.

## MARIADB != MYSQL:
MariaDB e MySQL são sistemas de gerenciamento de banco de dados relacionais (RDBMS) que têm uma história compartilhada, mas também apresentam diferenças significativas. Aqui estão algumas das principais diferenças entre MariaDB e MySQL:

1. **Origem e Desenvolvimento**:
   - MySQL: O MySQL foi originalmente desenvolvido pela MySQL AB e posteriormente adquirido pela Sun Microsystems (agora parte da Oracle Corporation).
   - MariaDB: MariaDB é um "fork" do MySQL, criado por Michael "Monty" Widenius, um dos desenvolvedores originais do MySQL, em resposta a preocupações sobre a direção do MySQL após a aquisição pela Oracle. O MariaDB é uma alternativa de código aberto ao MySQL.

2. **Licença**:
   - MySQL: MySQL é licenciado em dupla licença, sendo uma versão comunitária sob a GNU General Public License (GPL) e uma versão comercial com suporte da Oracle.
   - MariaDB: MariaDB é distribuído sob a GNU General Public License (GPL), o que o torna uma opção mais atraente para organizações que desejam evitar preocupações com licenciamento.

3. **Compatibilidade**:
   - MariaDB visa manter alta compatibilidade com o MySQL. Isso significa que a maioria das aplicações e comandos SQL escritos para o MySQL funcionará sem problemas no MariaDB.

4. **Recursos e Extensões**:
   - Ambos os sistemas oferecem funcionalidades similares, mas MariaDB adicionou algumas extensões e recursos não encontrados no MySQL, como armazenamento de dados em coluna (ColumnStore) e otimizações de desempenho.

5. **Comunidade e Suporte**:
   - Ambos têm comunidades ativas de desenvolvedores e usuários, mas o suporte comercial pode variar dependendo da escolha entre MySQL ou MariaDB.

6. **Segurança e Atualizações**:
   - Ambos fornecem atualizações de segurança regularmente, mas a administração e as políticas de segurança podem ser diferentes em implementações específicas.

7. **Compatibilidade de Plataforma**:
   - Tanto o MySQL quanto o MariaDB são suportados em uma variedade de sistemas operacionais, como Windows, Linux e macOS.

Em resumo, a escolha entre MariaDB e MySQL depende das necessidades específicas do seu projeto e das preocupações com a licença. Se você já está familiarizado com o MySQL, a transição para o MariaDB deve ser relativamente suave, já que eles são altamente compatíveis. Certifique-se de considerar as políticas de licenciamento e a compatibilidade com aplicativos existentes ao tomar sua decisão.

## CARACTERISTICAS:
### POSITIVAS:
1. **Compatibilidade com MySQL:** O MariaDB é altamente compatível com o MySQL, o que facilita a migração de aplicativos e bancos de dados existentes do MySQL para o MariaDB. A maioria dos comandos e aplicativos MySQL funcionará sem modificações significativas.

2. **Código Aberto:** O MariaDB é uma solução de código aberto, o que significa que seu código-fonte é acessível ao público e pode ser usado, modificado e distribuído livremente. Isso permite que a comunidade de desenvolvedores colabore na melhoria contínua do sistema.

3. **Desempenho Aprimorado:** O MariaDB oferece otimizações de desempenho que podem levar a um desempenho melhorado em comparação com o MySQL em algumas situações. Isso inclui recursos como o mecanismo de armazenamento Aria e InnoDB aprimorados.

4. **Armazenamento de Dados em Coluna (ColumnStore):** O MariaDB oferece suporte ao armazenamento de dados em coluna, o que é benéfico para aplicativos de análise e data warehousing, pois pode melhorar a eficiência da leitura de dados.

5. **Comunidade Ativa:** Assim como o MySQL, o MariaDB tem uma comunidade ativa de desenvolvedores e usuários que contribuem para o desenvolvimento e aprimoramento contínuo do sistema.

6. **Licença de Código Aberto:** A licença de código aberto (GPL) do MariaDB é atraente para organizações que desejam evitar preocupações de licenciamento e custos associados.

### NEGATIVAS:
1. **Suporte Comercial:** Embora existam opções de suporte comercial para o MariaDB, algumas organizações podem preferir o suporte oferecido pela Oracle para o MySQL. A escolha entre suporte comercial pode ser uma consideração importante.

2. **Documentação Variável:** A documentação e recursos de treinamento disponíveis para o MariaDB podem ser menos extensos em comparação com o MySQL, devido à popularidade histórica do MySQL. Isso pode tornar o aprendizado e a solução de problemas um pouco mais desafiadores.

3. **Plugins e Extensões:** Alguns plugins e extensões criados para o MySQL podem não ser diretamente compatíveis com o MariaDB, o que pode exigir adaptações ou modificações para uso no MariaDB.

4. **Dificuldades de Migração em Casos Raros:** Embora a compatibilidade geral seja alta, pode haver situações excepcionais em que a migração do MySQL para o MariaDB pode exigir esforço adicional devido a diferenças na implementação ou recursos específicos.

## SUBSIDIOS:
- [CURSO CRIADO PELO "DFILITTO"](https://youtube.com/playlist?list=PLfvOpw8k80WqyrR7P7fMNREW2Q82xJlpO&si=emYgj1LCLfT6MJJb)
- [CURSO FEITO PELO VILHALVA](https://github.com/VILHALVA)
- [VEJA A DOCUMENTAÇÃO](https://mariadb.com/kb/en/documentation/)
- [VEJA O MANUAL](./MANUAL.md)
- [VEJA A SINTAXE](./SINTAXE.md)
- [VEJA OS COMANDOS](./COMANDOS.md)

Cadastro Técnico Multifinalitário
=================================

Este modelo disponibilizado é mínimo em relação aos Cadastros Técnicos Multifinalitários.

Ele provavelmente é muito sucinto para qualquer aplicação real, mas é uma base sólida
para construção deste tipo de cadastro, hierárquico por natureza, onde temos:

* Distrito;
* Setor;
* Quadra;
* Face Quadra;
* Lote;
* Edificação;

O modelo não é mais especifico, pois cada município tem sua realidade, nas questões de serviços públicos,
logradouros e até mesmo na área cadastral.

A coluna _nome_ foi utilizada para todos os modelos para identificar o código final de cada entidade, seja
ela código do lote ou do distrito, podendo existir uma gama ampla de variedades de esquemas de numeração/codificação.

Como este modelo é apenas um guia, estas especificações foram deixadas a cargo do especialista a realizar
a modelagem do sistema final em questão.

O SRID 4674 (SIRGAS 2000 - geográfico) foi utilizado para construção das colunas geométricas. Deve ser
alterado para a realidade do projeto final.
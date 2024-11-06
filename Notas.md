Índices no SQL são estruturas de dados criadas em colunas de tabelas para melhorar a velocidade das consultas. Eles funcionam como índices em livros: ao invés de percorrer toda a tabela para encontrar um dado específico, o SQL usa o índice para acessar diretamente a informação, tornando a busca mais rápida.

Como funcionam
Os índices armazenam o valor da coluna indexada e um ponteiro para a linha correspondente na tabela. Quando uma consulta envolve a coluna indexada, o banco usa o índice para localizar rapidamente os registros correspondentes, sem precisar escanear toda a tabela.

Tipos de índices
Índices primários: geralmente criados em colunas de chave primária; garantem que cada valor seja único.
Índices secundários: podem ser criados em colunas não únicas e usadas em consultas frequentes.
Índices compostos: cobrem mais de uma coluna e são úteis para consultas que combinam essas colunas.
Por que usá-los
Aceleram as consultas: índices reduzem o tempo de busca, especialmente em tabelas grandes.
Facilitam ordenações e junções: operações com ORDER BY, JOIN e GROUP BY se tornam mais eficientes.
Reduzem o custo de operações complexas: otimizam consultas com condições complexas e filtros.
Observação
Índices exigem manutenção (especialmente em tabelas com muitas inserções, atualizações ou exclusões) e ocupam espaço em disco, então é essencial balancear o uso de índices para evitar impacto no desempenho.







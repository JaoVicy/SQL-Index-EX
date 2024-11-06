CREATE TABLE text_indexing(id SERIAL, name TEXT);

--Criação dos conteúdos da tabela:
INSERT INTO text_indexing(name) 
SELECT 'bob' 
FROM generate_series(1, 250000);

INSERT INTO text_indexing(name)
SELECT 'alice'
FROM generate_series(1, 250000);

-- Visualização Inicial sem o Index:
explain analyse SELECT * FROM text_indexing WHERE id = 2;

-- Criação do Index:
CREATE INDEX test_idx on text_indexing(id);

-- Visualização Final:
explain analyze SELECT * FROM text_indexing WHERE id = 4;
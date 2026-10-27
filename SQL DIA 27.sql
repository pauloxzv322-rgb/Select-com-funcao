-- 1. Criação da tabela (caso ainda não tenha criado com sucesso)
CREATE TABLE Cadastrodeprodutos(
  id INT PRIMARY KEY auto_increment,
  nomedoproduto VARCHAR(100),
  categoria VARCHAR(50),
  fabricacao VARCHAR(50),
  validade VARCHAR(50),
  quantidade INT,
  preco DECIMAL(7,2)
);

-- 2. Inserção de todos os produtos corrigidos
INSERT INTO Cadastrodeprodutos (nomedoproduto, categoria, fabricacao, validade, quantidade, preco) VALUES 
('biscoito', 'alimento', 'não sei', '10/10/2027', 200, 1.99),
('maca', 'fruta', 'não sei', '10/11/2027', 250, 1.98),
('bombom', 'doce', '10/10/2010', '10/12/2028', 300, 3.99),
('tenis', 'vestuario', '20/02/2010', 'indeterminada', 50, 40.00),
('bermuda', 'vestuario', '10/10/2025', 'indeterminada', 20, 65.00);

-- 3. Consulta para ver os dados na tela
SELECT * FROM Cadastrodeprodutos;

-- Variável 1: WHERE (Filtrar produtos com preço maior que 10 reais)
SELECT nomedoproduto, preco 
FROM Cadastrodeprodutos 
WHERE preco > 20.00;

-- Variável 2: IN (Produtos que pertencem às categorias doce ou alimento)
SELECT nomedoproduto, categoria 
FROM Cadastrodeprodutos 
WHERE categoria IN ('doce', 'alimento');

-- Variável 3: SUM (Saber o valor total somando o preço de cada item listado)
SELECT SUM(preco) AS preco_total_unitario 
FROM Cadastrodeprodutos;

-- Variável 4: AVG (Média da quantidade de itens que você tem em estoque)
SELECT AVG(quantidade) AS media_itens_estoque 
FROM Cadastrodeprodutos;

-- Variável 5: MAX e MIN (O produto mais caro e o mais barato da tabela)
SELECT MAX(preco) AS maior_preco, MIN(preco) AS menor_preco 
FROM Cadastrodeprodutos;

-- Variável 6: LIKE (Achar produtos cujo nome começa com a letra 'B')
SELECT nomedoproduto 
FROM Cadastrodeprodutos 
WHERE nomedoproduto LIKE 'B%';

-- Variável 7: ORDER BY com DESC (Listar produtos do mais caro para o mais barato)
SELECT nomedoproduto, preco 
FROM Cadastrodeprodutos 
ORDER BY preco DESC;

-- Variável 8: LIMIT (Trazer apenas os 2 produtos com maior quantidade em estoque)
SELECT nomedoproduto, quantidade 
FROM Cadastrodeprodutos 
ORDER BY quantidade DESC 
LIMIT 2;



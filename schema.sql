-- ============================================================
-- PROJETO DE EXTENSÃO UFMS DIGITAL 
-- PLATAFORMA CONEXÃO AGROVERDE - ESQUEMA DO BANCO DE DADOS
-- ============================================================

DROP TABLE IF EXISTS itens_pedido CASCADE;
DROP TABLE IF EXISTS pedidos CASCADE;
DROP TABLE IF EXISTS produtos CASCADE;
DROP TABLE IF EXISTS categorias CASCADE;
DROP TABLE IF EXISTS produtores CASCADE;
DROP TABLE IF EXISTS consumidores CASCADE;

-- 1. PRODUTORES
CREATE TABLE produtores (
    id_produtor SERIAL PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    nome_propriedade VARCHAR(150) NOT NULL,
    cpf_cnpj VARCHAR(18) UNIQUE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    municipio VARCHAR(100) DEFAULT 'Dourados',
    uf VARCHAR(2) DEFAULT 'MS',
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. CONSUMIDORES
CREATE TABLE consumidores (
    id_consumidor SERIAL PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    tipo_usuario VARCHAR(20) CHECK (tipo_usuario IN ('Consumidor Final', 'Comércio Local', 'Restaurante')),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. CATEGORIAS
CREATE TABLE categorias (
    id_categoria SERIAL PRIMARY KEY,
    nome_categoria VARCHAR(50) UNIQUE NOT NULL,
    descricao TEXT
);

-- 4. PRODUTOS
CREATE TABLE produtos (
    id_produto SERIAL PRIMARY KEY,
    id_produtor INT NOT NULL,
    id_categoria INT NOT NULL,
    nome_produto VARCHAR(100) NOT NULL,
    unidade_medida VARCHAR(20) NOT NULL CHECK (unidade_medida IN ('maço', 'kg', 'bandeja', 'unidade')),
    preco_unitario DECIMAL(10,2) NOT NULL CHECK (preco_unitario > 0),
    estoque_disponivel DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    imagem_url TEXT,
    ativo BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_produtor) REFERENCES produtores(id_produtor) ON DELETE CASCADE,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria) ON DELETE RESTRICT
);

-- 5. PEDIDOS
CREATE TABLE pedidos (
    id_pedido SERIAL PRIMARY KEY,
    id_consumidor INT NOT NULL,
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status_pedido VARCHAR(30) DEFAULT 'Pendente' CHECK (status_pedido IN ('Pendente', 'Em Separação', 'Enviado', 'Entregue', 'Cancelado')),
    valor_total DECIMAL(10,2) DEFAULT 0.00,
    metodo_entrega VARCHAR(50) DEFAULT 'Ponto de Distribuição Comunitário',
    FOREIGN KEY (id_consumidor) REFERENCES consumidores(id_consumidor) ON DELETE RESTRICT
);

-- 6. ITENS DO PEDIDO
CREATE TABLE itens_pedido (
    id_item SERIAL PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade DECIMAL(10,2) NOT NULL CHECK (quantidade > 0),
    preco_unitario_momento DECIMAL(10,2) NOT NULL,
    subtotal DECIMAL(10,2) GENERATED ALWAYS AS (quantidade * preco_unitario_momento) STORED,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido) ON DELETE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto) ON DELETE RESTRICT
);

-- SEED DATA
INSERT INTO categorias (nome_categoria, descricao) VALUES 
('Hortaliças', 'Folhas, verduras e hortaliças agroecológicas frescas'),
('Frutas', 'Frutas tropicais e de época sem agrotóxicos'),
('Tubérculos', 'Raízes, mandiocas, batatas e inhames'),
('Derivados', 'Mel, queijos, compotas e produtos artesanais');

INSERT INTO produtores (nome_completo, nome_propriedade, cpf_cnpj, telefone, municipio, uf) VALUES
('Seu João Silva', 'Sítio Primavera', '123.456.789-00', '(67) 99911-2233', 'Dourados', 'MS'),
('Dona Maria Santos', 'Chácara Recanto Verde', '987.654.321-11', '(67) 99822-3344', 'Dourados', 'MS');

INSERT INTO consumidores (nome_completo, email, telefone, tipo_usuario) VALUES
('Luiz Gustavo Souza', 'gustavo@email.com', '(67) 99123-4567', 'Consumidor Final'),
('Restaurante Esquina Carioca', 'contato@esquinacarioca.com', '(67) 3421-9988', 'Restaurante');

INSERT INTO produtos (id_produtor, id_categoria, nome_produto, unidade_medida, preco_unitario, estoque_disponivel) VALUES
(1, 1, 'Alface Crespa Agroecológica', 'maço', 3.50, 50.00),
(2, 1, 'Tomate Sweet Grape Orgânico', 'bandeja', 6.00, 30.00);

-- CONSULTA DE FATURAMENTO POR PRODUTOR
SELECT 
    pr.nome_propriedade AS produtor,
    COUNT(DISTINCT ip.id_pedido) AS total_pedidos,
    SUM(ip.subtotal) AS faturamento_total
FROM itens_pedido ip
JOIN produtos p ON ip.id_produto = p.id_produto
JOIN produtores pr ON p.id_produtor = pr.id_produtor
GROUP BY pr.id_produtor, pr.nome_propriedade;

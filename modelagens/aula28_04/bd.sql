CREATE DATABASE etecmcm2;

USE etecmcm2;

CREATE TABLE produto (
    id_produto int PRIMARY KEY AUTO_INCREMENT,
    nome_produto varchar(255),
    qtde_produto int,
    preco_produto decimal(10,2),
    marca_produto varchar(255),
    fk_categorias_id_categoria int
);

CREATE TABLE categorias (
    id_categoria int PRIMARY KEY AUTO_INCREMENT,
    nome_cat varchar(255)
);
 
ALTER TABLE produto ADD CONSTRAINT FK_produto_2
    FOREIGN KEY (fk_categorias_id_categoria)
    REFERENCES categorias (id_categoria)
    ON DELETE RESTRICT;
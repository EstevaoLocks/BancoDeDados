-- endereco
CREATE TABLE endereco (
	codendereco int PRIMARY KEY AUTO_INCREMENT,
    rua varchar(255) NOT null,
    num int NOT null,
    bairro varchar(255) not null,
    cidade varchar(255) not null,
    estado varchar(2) not null,
    cep int
);

-- cliente
CREATE TABLE cliente (
	codcliente int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(255) NOT null,
    datanascimento date NOT null,
    telefone int not null,
    email varchar(255) not null,
    fk_codendereco int,
    FOREIGN KEY fk_codendereco REFERENCES endereco(codendereco)
);

-- marca
CREATE TABLE marca (
	codmarca int PRIMARY KEY AUTO_INCREMENT,
    marca varchar(255) NOT null UNIQUE
);

-- modelo
CREATE TABLE modelo (
	codmodelo int PRIMARY KEY AUTO_INCREMENT,
    modelo varchar(255) NOT null UNIQUE,
    fk_codmarca int,
    FOREIGN KEY fk_codmarca REFERENCES marca(codmarca)
);

-- carro
CREATE TABLE carro (
	codcarro int PRIMARY KEY AUTO_INCREMENT,
    ano int NOT null,
    fk_codcliente int,
    fk_codmodelo int,
    FOREIGN KEY fk_codcliente REFERENCES cliente(codcliente),
    FOREIGN KEY fk_codmodelo REFERENCES modelo(codmodelo)
);

-- atendimento_servico
CREATE TABLE atendimento_servico (
	codatendimento_servico int PRIMARY KEY AUTO_INCREMENT,
    totalserv decimal(10,2) NOT null,
    qtde int NOT null
);

-- servico
CREATE TABLE servico (
	codservico int PRIMARY KEY AUTO_INCREMENT,
    servico varchar(255) NOT null UNIQUE,
    valor decimal(10,2) NOT null,
    fk_codatendimento_servico int,
    FOREIGN KEY fk_codatendimento_servico REFERENCES atendimento_servico(codatendimento_servico)
);

-- atendimento
CREATE TABLE atendimento (
	codatendimento int PRIMARY KEY AUTO_INCREMENT,
    totalgeral decimal(10,2) NOT null,
    dataatendimento date NOT null,
    fk_codatendimento_servico int,
    FOREIGN KEY fk_codatendimento_servico REFERENCES atendimento_servico(codatendimento_servico)
);
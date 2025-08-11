-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Ago-2025 às 14:00
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lavarapido`
--
CREATE DATABASE IF NOT EXISTS `lavarapido` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lavarapido`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento`
--

CREATE TABLE `atendimento` (
  `codatendimento` int(11) NOT NULL,
  `totalgeral` decimal(10,2) NOT NULL,
  `dataatendimento` date NOT NULL,
  `fk_codatendimento_servico` int(11) DEFAULT NULL,
  `fk_codatendimento_carro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `atendimento`
--

INSERT INTO `atendimento` (`codatendimento`, `totalgeral`, `dataatendimento`, `fk_codatendimento_servico`, `fk_codatendimento_carro`) VALUES
(1, 300.00, '2025-08-01', 1, 1),
(2, 150.00, '2025-08-02', 2, 2),
(3, 450.00, '2025-08-03', 3, 3),
(4, 200.00, '2025-08-04', 4, 4),
(5, 500.00, '2025-08-05', 5, 5),
(6, 120.00, '2025-08-06', 6, 6),
(7, 600.00, '2025-08-07', 7, 7),
(8, 250.00, '2025-08-08', 8, 8),
(9, 350.00, '2025-08-09', 9, 9),
(10, 100.00, '2025-08-10', 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento_servico`
--

CREATE TABLE `atendimento_servico` (
  `codatendimento_servico` int(11) NOT NULL,
  `totalserv` decimal(10,2) NOT NULL,
  `qtde` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `atendimento_servico`
--

INSERT INTO `atendimento_servico` (`codatendimento_servico`, `totalserv`, `qtde`) VALUES
(1, 300.00, 2),
(2, 150.00, 1),
(3, 450.00, 3),
(4, 200.00, 2),
(5, 500.00, 4),
(6, 120.00, 1),
(7, 600.00, 5),
(8, 250.00, 2),
(9, 350.00, 3),
(10, 100.00, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carro`
--

CREATE TABLE `carro` (
  `codcarro` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `fk_codcliente` int(11) DEFAULT NULL,
  `fk_codmodelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `carro`
--

INSERT INTO `carro` (`codcarro`, `ano`, `fk_codcliente`, `fk_codmodelo`) VALUES
(1, 2018, 1, 1),
(2, 2020, 2, 2),
(3, 2017, 3, 3),
(4, 2019, 4, 4),
(5, 2015, 5, 5),
(6, 2021, 6, 6),
(7, 2016, 7, 7),
(8, 2018, 8, 8),
(9, 2020, 9, 9),
(10, 2019, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `codcliente` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `datanascimento` date NOT NULL,
  `telefone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fk_codendereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codcliente`, `nome`, `datanascimento`, `telefone`, `email`, `fk_codendereco`) VALUES
(1, 'Carlos Silva', '1985-03-15', 1198765432, 'carlos.silva@email.com', 1),
(2, 'Mariana Souza', '1990-07-22', 2147483647, 'mariana.souza@email.com', 2),
(3, 'João Pereira', '1978-12-09', 2147483647, 'joao.pereira@email.com', 3),
(4, 'Fernanda Lima', '1988-05-30', 2147483647, 'fernanda.lima@email.com', 4),
(5, 'Ricardo Alves', '1995-09-17', 2147483647, 'ricardo.alves@email.com', 5),
(6, 'Paula Santos', '1982-01-05', 2147483647, 'paula.santos@email.com', 6),
(7, 'Luiz Oliveira', '1975-11-20', 2147483647, 'luiz.oliveira@email.com', 7),
(8, 'Tatiane Rocha', '1993-04-14', 2147483647, 'tatiane.rocha@email.com', 8),
(9, 'Felipe Ramos', '1986-08-08', 2147483647, 'felipe.ramos@email.com', 9),
(10, 'Ana Beatriz', '1999-06-12', 2147483647, 'ana.beatriz@email.com', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `codendereco` int(11) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `num` int(11) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cep` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`codendereco`, `rua`, `num`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'Rua das Flores', 101, 'Centro', 'São Paulo', 'SP', 12345000),
(2, 'Av. Paulista', 1578, 'Bela Vista', 'São Paulo', 'SP', 12345001),
(3, 'Rua XV de Novembro', 200, 'Centro', 'Curitiba', 'PR', 80020000),
(4, 'Av. Brasil', 320, 'Jardim América', 'Rio de Janeiro', 'RJ', 22040000),
(5, 'Rua Goiás', 45, 'Funcionários', 'Belo Horizonte', 'MG', 30120000),
(6, 'Rua Amazonas', 78, 'Centro', 'Porto Alegre', 'RS', 90010000),
(7, 'Av. Beira Mar', 500, 'Meireles', 'Fortaleza', 'CE', 60165000),
(8, 'Rua das Palmeiras', 12, 'Centro', 'Florianópolis', 'SC', 88010000),
(9, 'Rua Piratini', 89, 'São José', 'Canoas', 'RS', 92010000),
(10, 'Av. Independência', 740, 'Centro', 'Vitória', 'ES', 29010000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca`
--

CREATE TABLE `marca` (
  `codmarca` int(11) NOT NULL,
  `marca` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `marca`
--

INSERT INTO `marca` (`codmarca`, `marca`) VALUES
(4, 'Chevrolet'),
(6, 'Fiat'),
(3, 'Ford'),
(2, 'Honda'),
(7, 'Hyundai'),
(9, 'Jeep'),
(8, 'Nissan'),
(10, 'Renault'),
(1, 'Toyota'),
(5, 'Volkswagen');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelo`
--

CREATE TABLE `modelo` (
  `codmodelo` int(11) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `fk_codmarca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `modelo`
--

INSERT INTO `modelo` (`codmodelo`, `modelo`, `fk_codmarca`) VALUES
(1, 'Corolla', 1),
(2, 'Civic', 2),
(3, 'Focus', 3),
(4, 'Onix', 4),
(5, 'Gol', 5),
(6, 'Argo', 6),
(7, 'HB20', 7),
(8, 'Kicks', 8),
(9, 'Compass', 9),
(10, 'Kwid', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `codservico` int(11) NOT NULL,
  `servico` varchar(255) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `fk_codatendimento_servico` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`codservico`, `servico`, `valor`, `fk_codatendimento_servico`) VALUES
(1, 'Troca de óleo', 150.00, 1),
(2, 'Balanceamento', 150.00, 2),
(3, 'Troca de pneus', 150.00, 3),
(4, 'Alinhamento', 100.00, 4),
(5, 'Revisão completa', 125.00, 5),
(6, 'Troca de filtro', 120.00, 6),
(7, 'Pintura geral', 120.00, 7),
(8, 'Limpeza interna', 125.00, 8),
(9, 'Troca de bateria', 175.00, 9),
(10, 'Higienização do ar-condicionado', 100.00, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD PRIMARY KEY (`codatendimento`),
  ADD KEY `fk_codatendimento_servico` (`fk_codatendimento_servico`),
  ADD KEY `fk_codatendimento_carro` (`fk_codatendimento_carro`);

--
-- Índices para tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  ADD PRIMARY KEY (`codatendimento_servico`);

--
-- Índices para tabela `carro`
--
ALTER TABLE `carro`
  ADD PRIMARY KEY (`codcarro`),
  ADD KEY `fk_codcliente` (`fk_codcliente`),
  ADD KEY `fk_codmodelo` (`fk_codmodelo`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`codcliente`),
  ADD KEY `fk_codendereco` (`fk_codendereco`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`codendereco`);

--
-- Índices para tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`codmarca`),
  ADD UNIQUE KEY `marca` (`marca`);

--
-- Índices para tabela `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`codmodelo`),
  ADD UNIQUE KEY `modelo` (`modelo`),
  ADD KEY `fk_codmarca` (`fk_codmarca`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`codservico`),
  ADD UNIQUE KEY `servico` (`servico`),
  ADD KEY `fk_codatendimento_servico` (`fk_codatendimento_servico`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimento`
--
ALTER TABLE `atendimento`
  MODIFY `codatendimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `atendimento_servico`
--
ALTER TABLE `atendimento_servico`
  MODIFY `codatendimento_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `carro`
--
ALTER TABLE `carro`
  MODIFY `codcarro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `codcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `codendereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `codmarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `modelo`
--
ALTER TABLE `modelo`
  MODIFY `codmodelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `codservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `atendimento`
--
ALTER TABLE `atendimento`
  ADD CONSTRAINT `atendimento_ibfk_1` FOREIGN KEY (`fk_codatendimento_servico`) REFERENCES `atendimento_servico` (`codatendimento_servico`),
  ADD CONSTRAINT `atendimento_ibfk_2` FOREIGN KEY (`fk_codatendimento_carro`) REFERENCES `carro` (`codcarro`);

--
-- Limitadores para a tabela `carro`
--
ALTER TABLE `carro`
  ADD CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`fk_codcliente`) REFERENCES `cliente` (`codcliente`),
  ADD CONSTRAINT `carro_ibfk_2` FOREIGN KEY (`fk_codmodelo`) REFERENCES `modelo` (`codmodelo`);

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`fk_codendereco`) REFERENCES `endereco` (`codendereco`);

--
-- Limitadores para a tabela `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`fk_codmarca`) REFERENCES `marca` (`codmarca`);

--
-- Limitadores para a tabela `servico`
--
ALTER TABLE `servico`
  ADD CONSTRAINT `servico_ibfk_1` FOREIGN KEY (`fk_codatendimento_servico`) REFERENCES `atendimento_servico` (`codatendimento_servico`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

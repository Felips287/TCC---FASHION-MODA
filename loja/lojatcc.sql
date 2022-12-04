-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Dez-2022 às 13:25
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `lojatcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `qc_categorias`
--

CREATE TABLE `qc_categorias` (
  `cate_id` int(11) NOT NULL,
  `cate_nome` varchar(50) NOT NULL,
  `cate_slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `qc_categorias`
--

INSERT INTO `qc_categorias` (`cate_id`, `cate_nome`, `cate_slug`) VALUES
(1, 'Novidades', 'novidades'),
(2, 'Roupas Masculinas', 'roupas-mascuçina'),
(3, 'Roupas Femininas', 'roupas-femininas'),
(4, 'Calçados', 'calcados');

-- --------------------------------------------------------

--
-- Estrutura da tabela `qc_clientes`
--

CREATE TABLE `qc_clientes` (
  `cli_id` int(11) NOT NULL,
  `cli_nome` varchar(80) NOT NULL,
  `cli_sobrenome` varchar(80) NOT NULL,
  `cli_endereco` varchar(100) NOT NULL,
  `cli_numero` varchar(20) NOT NULL,
  `cli_bairro` varchar(80) NOT NULL,
  `cli_cidade` varchar(150) NOT NULL,
  `cli_uf` varchar(2) NOT NULL,
  `cli_cep` varchar(10) NOT NULL,
  `cli_cpf` varchar(12) NOT NULL,
  `cli_rg` varchar(20) NOT NULL,
  `cli_ddd` int(2) NOT NULL,
  `cli_fone` varchar(10) NOT NULL,
  `cli_celular` varchar(10) NOT NULL,
  `cli_email` varchar(60) NOT NULL,
  `cli_pass` varchar(40) NOT NULL,
  `cli_data_nasc` date NOT NULL,
  `cli_data_cad` date NOT NULL,
  `cli_hora_cad` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `qc_clientes`
--

INSERT INTO `qc_clientes` (`cli_id`, `cli_nome`, `cli_sobrenome`, `cli_endereco`, `cli_numero`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_cpf`, `cli_rg`, `cli_ddd`, `cli_fone`, `cli_celular`, `cli_email`, `cli_pass`, `cli_data_nasc`, `cli_data_cad`, `cli_hora_cad`) VALUES
(1, 'Felipe', 'Silva', 'Rua 2', '09', 'Setor Sul', 'Goiatuba', 'GO', '75600000', '97987897970', '9887787', 55, '34952678', '6498420036', 'felipesilvagarcia835@gmail.com', '55f7243cb87f5310594356b673b64b51', '2005-03-08', '2022-11-30', '01:12:25'),
(35, 'Gabriel', 'Marcos', '41242424', '424', '421424', '4214', 'GO', '75622001', '97987897973', '9887787', 55, '2798147893', '472979249', 'felipsgarcia286@hotmail.com', '202cb962ac59075b964b07152d234b70', '1775-08-24', '2022-12-01', '11:32:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `qc_imagens`
--

CREATE TABLE `qc_imagens` (
  `img_id` int(11) NOT NULL,
  `img_nome` varchar(50) NOT NULL,
  `img_pro_id` int(11) NOT NULL,
  `img_pasta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `qc_imagens`
--

INSERT INTO `qc_imagens` (`img_id`, `img_nome`, `img_pro_id`, `img_pasta`) VALUES
(1, 'tenis-couro-01.jpg', 7, ''),
(2, 'tenis-couro-02.jpg', 7, ''),
(3, 'tenis-couro-03.jpg', 7, ''),
(5, '170911144035tenis-mizuno-wave.jpg.jpg', 16, ''),
(6, '170911144235d16-1095-791-zoom1.jpg.jpg', 16, ''),
(8, '170911144251d16-1095-791-zoom3.jpg.jpg', 16, ''),
(12, '170911150038d16-1095-791-zoom4.jpg.jpg', 16, ''),
(16, '221203090241tenis-nike-shox.jpg.jpg', 8, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `qc_pedidos`
--

CREATE TABLE `qc_pedidos` (
  `ped_id` int(11) NOT NULL,
  `ped_data` date NOT NULL,
  `ped_hora` time NOT NULL,
  `ped_cliente` int(11) NOT NULL,
  `ped_cod` varchar(100) NOT NULL,
  `ped_ref` varchar(40) NOT NULL,
  `ped_pag_status` varchar(20) NOT NULL,
  `ped_pag_forma` varchar(20) NOT NULL,
  `ped_pag_tipo` varchar(20) NOT NULL,
  `ped_pag_codigo` varchar(220) NOT NULL,
  `ped_frete_valor` double(9,2) DEFAULT 0.00,
  `ped_frete_tipo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `qc_pedidos_itens`
--

CREATE TABLE `qc_pedidos_itens` (
  `item_id` int(11) NOT NULL,
  `item_produto` int(11) NOT NULL,
  `item_valor` double(9,2) NOT NULL,
  `item_qtd` int(6) NOT NULL,
  `item_ped_cod` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `qc_pedidos_itens`
--

INSERT INTO `qc_pedidos_itens` (`item_id`, `item_produto`, `item_valor`, `item_qtd`, `item_ped_cod`) VALUES
(201, 5, 1250.00, 1, '2211301511211'),
(202, 4, 300.00, 1, '22113015115234'),
(203, 1, 120.00, 1, '2211301811541'),
(204, 6, 300.00, 1, '2211301811541'),
(205, 5, 1250.00, 1, '22120111123435'),
(206, 9, 0.80, 1, '2212020812001'),
(207, 5, 1250.00, 1, '2212020812541');

-- --------------------------------------------------------

--
-- Estrutura da tabela `qc_produtos`
--

CREATE TABLE `qc_produtos` (
  `pro_id` int(11) NOT NULL,
  `pro_categoria` int(11) NOT NULL,
  `pro_nome` varchar(100) NOT NULL,
  `pro_desc` text NOT NULL,
  `pro_peso` double(9,3) NOT NULL,
  `pro_valor` double(9,2) NOT NULL,
  `pro_largura` int(11) NOT NULL,
  `pro_altura` int(11) NOT NULL,
  `pro_comprimento` varchar(2) NOT NULL,
  `pro_img` varchar(255) NOT NULL,
  `pro_slug` varchar(100) NOT NULL,
  `pro_estoque` int(11) NOT NULL,
  `pro_modelo` varchar(100) NOT NULL,
  `pro_ref` varchar(100) NOT NULL,
  `pro_fabricante` int(11) NOT NULL,
  `pro_ativo` char(1) NOT NULL,
  `pro_frete_free` varchar(100) NOT NULL DEFAULT 'Não'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `qc_produtos`
--

INSERT INTO `qc_produtos` (`pro_id`, `pro_categoria`, `pro_nome`, `pro_desc`, `pro_peso`, `pro_valor`, `pro_largura`, `pro_altura`, `pro_comprimento`, `pro_img`, `pro_slug`, `pro_estoque`, `pro_modelo`, `pro_ref`, `pro_fabricante`, `pro_ativo`, `pro_frete_free`) VALUES
(1, 2, 'Camisa Social', '<p>Descri&ccedil;&atilde;o da Camisa Polo Fila Open Preta e Cinza A Fila &eacute; uma marca italiana que est&aacute; presente nos principais esportes e eventos esportivos do mundo, especializada na produ&ccedil;&atilde;o de artigos esportivos e patrocinadora de diversos atletas. A Camisa Polo Fila Open Preta e Cinza conta com tecnologia Flow, que faz com que a transpira&ccedil;&atilde;o seja absorvida e rapidamente transportada para o tecido que facilitar&aacute; a evapora&ccedil;&atilde;o mantendo o corpo na temperatura ideal proporcionando maior conforto e melhor desempenho. Especifica&ccedil;&otilde;es da Camisa Polo Fila Open Preta e Cinza Conhe&ccedil;a as suas caracter&iacute;sticas: - Perfil: T&ecirc;nis; - Tecnologia: Flow elimina com rapidez o suor, facilitando sua evapora&ccedil;&atilde;o. Ela mant&eacute;m o corpo na temperatura ideal para a pr&aacute;tica esportiva e proporciona maior conforto e r&aacute;pida secagem; - Material: 100% poliester; - Detalhamento: Camisa gola polo, peitilho com fechamento em bot&atilde;o, logotipo F-Box no canto esquerdo do peito, pequena escrita Flow no cantoinferior direito na parte traseira; - Garantia do Fabricante: Contra defeito de fabrica&ccedil;&atilde;o; - Origem: Nacional. Dimens&otilde;es do Produto DIMENS&Otilde;ES: Camisetas E Polos: Tamanho Pp (Xs) Tamanho P (S) Largura: N/D Altura: N/D Largura: 50 cm Altura: 64 cm Tamanho M (M) Tamanho G (L) Largura: 53 cm Altura: 70 cm Largura: 56 cm Altura: 72 cm Tamanhos Gg (Xl) Largura: 59 cm Altura: 75 cm *Observa&ccedil;&otilde;es: As medidas s&atilde;o aproximadas e podem variar para mais ou para menos de uma pe&ccedil;a para outra. Todas as informa&ccedil;&otilde;es divulgadas s&atilde;o de responsabilidade do fabricante/fornecedor. Imagens Meramente Ilustrativas.</p>', 0.050, 60.00, 80, 80, '8', '03.jpg', 'camisa-social', 1, 'modelo01', '02651551', 1, '1', 'gratuito'),
(2, 2, 'Camisa Polo', 'Descrição da Camisa Polo Fila Open Preta e Cinza A Fila é uma marca italiana que está presente nos principais esportes e eventos esportivos do mundo, especializada na produção de artigos esportivos e patrocinadora de diversos atletas. A Camisa Polo Fila Open Preta e Cinza conta com tecnologia Flow, que faz com que a transpiração seja absorvida e rapidamente transportada para o tecido que facilitará a evaporação mantendo o corpo na temperatura ideal proporcionando maior conforto e melhor desempenho. Especificações da Camisa Polo Fila Open Preta e Cinza Conheça as suas características: - Perfil: Tênis; - Tecnologia: Flow elimina com rapidez o suor, facilitando sua evaporação. Ela mantém o corpo na temperatura ideal para a prática esportiva e proporciona maior conforto e rápida secagem; - Material: 100% poliester; - Detalhamento: Camisa gola polo, peitilho com fechamento em botão, logotipo F-Box no canto esquerdo do peito, pequena escrita Flow no cantoinferior direito na parte traseira; - Garantia do Fabricante: Contra defeito de fabricação; - Origem: Nacional. Dimensões do Produto DIMENSÕES: Camisetas E Polos: Tamanho Pp (Xs) Tamanho P (S) Largura: N/D Altura: N/D Largura: 50 cm Altura: 64 cm Tamanho M (M) Tamanho G (L) Largura: 53 cm Altura: 70 cm Largura: 56 cm Altura: 72 cm Tamanhos Gg (Xl) Largura: 59 cm Altura: 75 cm *Observações: As medidas são aproximadas e podem variar para mais ou para menos de uma peça para outra.\r\nTodas as informações divulgadas são de responsabilidade do fabricante/fornecedor.\r\nImagens Meramente Ilustrativas.', 0.060, 60.00, 50, 50, '5', 'camisa.jpg', 'camisa-polo', 10, 'modelo 054515', '15154', 1, '1', 'Não'),
(3, 3, 'Calça Jeans', '<p>Cal&ccedil;a 100% Algod&atilde;o jeans b&aacute;sica com abertura em bot&atilde;o e z&iacute;per. Possui bolsos na frentee bolsos na parte de tr&aacute;s. Detalhe costura em cor contrastante. Cal&ccedil;a 100% Algod&atilde;o jeans b&aacute;sica com abertura em bot&atilde;o e z&iacute;per. Possui bolsos na frentee bolsos na parte de tr&aacute;s. Detalhe costura em cor contrastante.</p>', 0.100, 50.00, 50, 50, '5', 'calca.jpg', 'calca-jeans', 15, '0654655', '2998415', 1, '1', 'Não'),
(4, 3, 'Calça de Moleton', '<p>Cal&ccedil;a 100% Algod&atilde;o jeans b&aacute;sica com abertura em bot&atilde;o e z&iacute;per. Possui bolsos na frentee bolsos na parte de tr&aacute;s. Detalhe costura em cor contrastante. Cal&ccedil;a 100% Algod&atilde;o jeans b&aacute;sica com abertura em bot&atilde;o e z&iacute;per. Possui bolsos na frentee bolsos na parte de tr&aacute;s. Detalhe costura em cor contrastante.</p>', 0.100, 60.00, 50, 50, 'GG', 'calca02.jpg', 'calca-de-moleton', 50, '15445', '554888', 1, '1', 'Não'),
(5, 4, 'Tênis Corvette Slim Freeway', '<p>Com leve amortecimento, o T&ecirc;nis Corvette Slim Freeway conta com conforto e design esportivo para voc&ecirc; acelerar em dire&ccedil;&atilde;o &agrave; autenticidade. Ideal para acompanhar os apaixonados por carros.</p>', 0.100, 150.00, 50, 50, '5', 'tenis-corvete.jpg', 'tenis-corvette-slim-freeway', 10, '265566', '5565699', 1, '1', 'Não'),
(6, 4, 'Tênis Asics GEL Excite', '<p>O T&ecirc;nis Asics GEL Excite 4 &eacute; desenvolvido com tecnologias que melhoram o desempenho nas corridas e caminhadas. Sistema de gel com absor&ccedil;&atilde;o de impacto e EVA que retorna ao estado original com rapidez.</p>', 0.100, 110.00, 50, 50, '5', 'tenis-asics.jpg', 'tenis-asics-gel-excite', 1, '111555', '1589555', 1, '1', 'Não'),
(7, 4, 'Tênis Couro Nike Shox Avenue', '<p>Apresentando amortecimento de 4 colunas no calcanhar, o T&ecirc;nis Couro Nike Shox Avenue LTR auxilia na distribui&ccedil;&atilde;o do peso. Conta com design esportivo, tra&ccedil;&atilde;o e sistema de amarra&ccedil;&atilde;o que envolve os p&eacute;s.</p>', 0.100, 99.90, 50, 50, '5', 'tenis-couro.jpg', 'tenis-couro-nike-shox-avenue', 10, '05515151', '11558566', 1, '1', 'Não'),
(8, 4, 'Tênis Nike Shox Avenue', '<p>Aproveite a casualidade do dia a dia com muito estilo e pronto para aceitar qualquer convite. Com o T&ecirc;nis Nike Shox Avenue voc&ecirc; completa o visual com originalidade e desfruta de m&aacute;ximo conforto.</p>', 0.100, 88.90, 50, 50, '31', 'tenis-nike-shox.jpg', 'tenis-nike-shox-avenue', 50, '05899644', '05485515', 1, '1', 'Não'),
(9, 4, 'Tênis Havaianas TNS Colors', '<p><span style=\"color: #1a1a1e; font-family: \'Maison Neue\', sans-serif; font-size: 16px; letter-spacing: 0.48px; background-color: #f0e8cb;\">O modelo Havaianas TNS Colors &eacute; o seu mais novo companheiro para o dia a dia. Trazendo todo conforto &agrave; sua rotina, o modelo apresenta uma cartela de cores s&oacute;lidas que complementam seu visual trazendo todo o estilo. T&atilde;o leve e confort&aacute;vel que voc&ecirc; n&atilde;o sentir&aacute; que est&aacute; com um t&ecirc;nis nos p&eacute;s. O TNS &eacute; feito de materiais reciclados como as aparas de borracha no solado, e de fontes renov&aacute;veis, como o algod&atilde;o.</span></p>', 0.100, 80.00, 50, 50, '5', '221202141123tenis-tns.jpeg.jpeg', 'tenis-havaianas-tns-colors', 20, '84484884', '84845226', 1, '1', 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `qc_user`
--

CREATE TABLE `qc_user` (
  `user_id` int(11) NOT NULL,
  `user_nome` varchar(255) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pw` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `qc_user`
--

INSERT INTO `qc_user` (`user_id`, `user_nome`, `user_email`, `user_pw`) VALUES
(3, 'Felipe ADM', 'felipesilvagarcia835@gmail.com', 'f4cc08fa20e1167cba660c5fae1f2a1a');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `qc_categorias`
--
ALTER TABLE `qc_categorias`
  ADD PRIMARY KEY (`cate_id`);

--
-- Índices para tabela `qc_clientes`
--
ALTER TABLE `qc_clientes`
  ADD PRIMARY KEY (`cli_id`);

--
-- Índices para tabela `qc_imagens`
--
ALTER TABLE `qc_imagens`
  ADD PRIMARY KEY (`img_id`);

--
-- Índices para tabela `qc_pedidos`
--
ALTER TABLE `qc_pedidos`
  ADD PRIMARY KEY (`ped_id`);

--
-- Índices para tabela `qc_pedidos_itens`
--
ALTER TABLE `qc_pedidos_itens`
  ADD PRIMARY KEY (`item_id`);

--
-- Índices para tabela `qc_produtos`
--
ALTER TABLE `qc_produtos`
  ADD PRIMARY KEY (`pro_id`);

--
-- Índices para tabela `qc_user`
--
ALTER TABLE `qc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `qc_categorias`
--
ALTER TABLE `qc_categorias`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `qc_clientes`
--
ALTER TABLE `qc_clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `qc_imagens`
--
ALTER TABLE `qc_imagens`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `qc_pedidos`
--
ALTER TABLE `qc_pedidos`
  MODIFY `ped_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de tabela `qc_pedidos_itens`
--
ALTER TABLE `qc_pedidos_itens`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT de tabela `qc_produtos`
--
ALTER TABLE `qc_produtos`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `qc_user`
--
ALTER TABLE `qc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

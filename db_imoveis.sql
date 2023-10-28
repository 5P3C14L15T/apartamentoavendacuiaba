-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Out-2023 às 00:16
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_imoveis`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairros`
--

CREATE TABLE `bairros` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `regiao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `bairros`
--

INSERT INTO `bairros` (`id`, `nome`, `regiao`) VALUES
(1, 'Alvorada', 'oeste'),
(2, 'Araés', 'oeste'),
(3, 'Barra do Pari', 'oeste'),
(4, 'Centro Norte', 'oeste'),
(5, 'Centro Sul', 'oeste'),
(6, 'Cidade Alta', 'oeste'),
(7, 'Cidade Verde', 'oeste'),
(8, 'Coophamil', 'oeste'),
(9, 'Consil', 'oeste'),
(10, 'Despraiado', 'oeste'),
(11, 'Duque de Caxias', 'oeste'),
(12, 'Goiabeiras', 'oeste'),
(13, 'Jardim Beira Rio', 'oeste'),
(14, 'Jardim Cuiabá', 'oeste'),
(15, 'Jardim Mariana', 'oeste'),
(16, 'Jardim Santa Isabel', 'oeste'),
(17, 'Jardim Ubirajara', 'oeste'),
(18, 'Jardim Monte Líbano', 'oeste'),
(19, 'Jardim Primavera', 'oeste'),
(20, 'Novo Colorado', 'oeste'),
(21, 'Novo Terceiro', 'oeste'),
(22, 'Parque Residencial Tropical Ville', 'oeste'),
(23, 'Popular', 'oeste'),
(24, 'Porto', 'oeste'),
(25, 'Quilombo', 'oeste'),
(26, 'Ribeirão Da Ponte', 'oeste'),
(27, 'Ribeirão do Lipa', 'oeste'),
(28, 'Santa Marta', 'oeste'),
(29, 'Santa Rosa', 'oeste'),
(30, 'Residencial Sucuri', 'oeste'),
(31, 'Verdão', 'oeste'),
(32, 'Centro Político Administrativo', 'norte'),
(33, 'Jardim Florianópolis', 'norte'),
(34, 'Jardim União', 'norte'),
(35, 'Jardim Vitória', 'norte'),
(36, 'Jardim Aroeiras', 'norte'),
(37, 'Morada da Serra (CPA cv, II, III, IV)', 'norte'),
(38, 'Morada do Ouro', 'norte'),
(39, 'Nova Conquista', 'norte'),
(40, 'Novo Paraíso I,II', 'norte'),
(41, 'Primeiro de Março', 'norte'),
(42, 'Três Barras', 'norte'),
(43, 'Ouro Fino', 'norte'),
(44, 'Residencial Pádova', 'norte'),
(45, 'Serra Dourada', 'norte'),
(46, 'Doutor Fábio leite I e II(atual Santa fé)', 'norte'),
(47, 'Altos da Glória', 'norte'),
(48, 'Jardim Umuarama I e II', 'norte'),
(49, 'Nova Canaã I,I e III', 'norte'),
(50, 'Jardim Brasil', 'norte'),
(51, 'Altos da Serra I e II', 'norte'),
(52, 'Centro America', 'norte'),
(53, 'Flor da Mata (área invadida)', 'norte'),
(54, 'Tancredo Neves', 'norte'),
(55, 'Residencial Jardim Videira', 'norte'),
(56, 'Araés', 'leste'),
(57, 'Areão', 'leste'),
(58, 'Bandeirantes', 'leste'),
(59, 'Baú', 'leste'),
(60, 'Bela Marina', 'leste'),
(61, 'Bela Vista', 'leste'),
(62, 'Boa Esperança', 'leste'),
(63, 'Bosque da Saúde', 'leste'),
(64, 'Cachoeira das Garças', 'leste'),
(65, 'Campo Velho', 'leste'),
(66, 'São Mateus', 'leste'),
(67, 'Canjica', 'leste'),
(68, 'Carumbé', 'leste'),
(69, 'Dom Aquino', 'leste'),
(70, 'Dom Bosco', 'leste'),
(71, 'Grande Terceiro', 'leste'),
(72, 'Jardim Aclimação', 'leste'),
(73, 'Jardim das Américas', 'leste'),
(74, 'Jardim Califórnia', 'leste'),
(75, 'Jardim Eldorado', 'leste'),
(76, 'Jardim Europa', 'leste'),
(77, 'Jardim Imperial', 'leste'),
(78, 'Jardim Itália', 'leste'),
(79, 'Jardim Leblon', 'leste'),
(80, 'Jardim Paulista', 'leste'),
(81, 'Jardim Petrópolis', 'leste'),
(82, 'Jardim Shangri-Lá', 'leste'),
(83, 'Jardim Tropical', 'leste'),
(84, 'Jardim Universitário', 'leste'),
(85, 'Da Lixeira', 'leste'),
(86, 'Morada dos Nobres', 'leste'),
(87, 'Novo Mato Grosso', 'leste'),
(88, 'Novo Horizonte', 'leste'),
(89, 'Planalto', 'leste'),
(90, 'Paiaguás', 'leste'),
(91, 'Pedregal', 'leste'),
(92, 'Pico do Amor', 'leste'),
(93, 'Poção', 'leste'),
(94, 'Praeirinho', 'leste'),
(95, 'Praeiro', 'leste'),
(96, 'Recanto dos Pássaros', 'leste'),
(97, 'Residencial Itamarati', 'leste'),
(98, 'Residencial Santa Inês', 'leste'),
(99, 'Residencial São Carlos', 'leste'),
(100, 'Santa Cruz', 'leste'),
(101, 'São Roque', 'leste'),
(102, 'Sol Nascente', 'leste'),
(103, 'Terra Nova', 'leste'),
(104, 'Do Terceiro', 'leste'),
(105, 'UFMT (Campus Universitário)', 'leste'),
(106, 'Altos do Cerrado', 'sul'),
(107, 'Altos do Coxipó', 'sul'),
(108, 'Cohab São Gonçalo', 'sul'),
(109, 'Coophema', 'sul'),
(110, 'Coxipó', 'sul'),
(111, 'Jardim Comodoro', 'sul'),
(112, 'Jardim Fortaleza', 'sul'),
(113, 'Jardim Gramado', 'sul'),
(114, 'Jardim Industriário', 'sul'),
(115, 'Jardim dos Ipês', 'sul'),
(116, 'Jardim Mossoró', 'sul'),
(117, 'Jardim das Palmeiras', 'sul'),
(118, 'Jardim Passaredo', 'sul'),
(119, 'Jardim Presidente', 'sul'),
(120, 'Jordão', 'sul'),
(121, 'Lagoa Azul', 'sul'),
(122, 'Nossa Senhora Aparecida', 'sul'),
(123, 'Nova Esperança', 'sul'),
(124, 'Novo Milenio', 'sul'),
(125, 'Osmar Cabral', 'sul'),
(126, 'Parque Atalaia', 'sul'),
(127, 'Parque Cuiabá', 'sul'),
(128, 'Parque Georgia', 'sul'),
(129, 'Parque Residencial', 'sul'),
(130, 'Parque Ohara', 'sul'),
(131, 'Pascoal Ramos', 'sul'),
(132, 'Pedra 90', 'sul'),
(133, 'Real Parque', 'sul'),
(134, 'Residencial Coxipó', 'sul'),
(135, 'Residencial Itapajé', 'sul'),
(136, 'Residencial Santa Terezinha I', 'sul'),
(137, 'Residencial Santa Terezinha II', 'sul'),
(138, 'Santa Laura', 'sul'),
(139, 'São Gonçalo', 'sul'),
(140, 'São Gonçalo Beira Rio', 'sul'),
(141, 'São João Del Rei', 'sul'),
(142, 'São José', 'sul'),
(143, 'São Sebastião', 'sul'),
(144, 'São Francisco', 'sul'),
(145, 'Tijucal', 'sul'),
(146, 'Vista Alegre', 'sul'),
(147, 'Jd Itamarati', 'sul');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faixavalor`
--

CREATE TABLE `faixavalor` (
  `id_valor` int(11) NOT NULL,
  `faixa_preco` varchar(255) NOT NULL,
  `faixa_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `faixavalor`
--

INSERT INTO `faixavalor` (`id_valor`, `faixa_preco`, `faixa_desc`) VALUES
(1, '100000-200000', '100mil - 200mil'),
(2, '200001-300000', '201mil - 300mil'),
(3, '300001-400000', '301mil - 400mil'),
(4, '400001-500000', '401mil - 500mil'),
(5, '500001-600000', '501mil - 600mil'),
(6, '600001-700000', '601mil - 700mil'),
(7, '700001-800000', '701mil - 800mil'),
(8, '800001-900000', '801mil - 900mil'),
(9, '900001-1000000', '901mil - 1 Milhão'),
(10, '1000001-1000000000', 'Acima de 1 Milhão');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagem`
--

CREATE TABLE `imagem` (
  `id` int(11) NOT NULL,
  `id_imovel` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `incluida_em` datetime NOT NULL,
  `url_webp` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `imagem`
--

INSERT INTO `imagem` (`id`, `id_imovel`, `url`, `nome`, `incluida_em`, `url_webp`) VALUES
(645, '1', 'users/eb3f1350088f87636a74ede4a577ff21/1687525007/64963f4fc50f7.jpeg', 'WhatsApp Image 2022-03-24 at 14.37.55 (1).jpeg', '2023-06-24 00:56:47', NULL),
(646, '1', 'users/eb3f1350088f87636a74ede4a577ff21/1687525007/64963f4fdaaa1.jpeg', 'WhatsApp Image 2022-03-24 at 14.37.56 (1).jpeg', '2023-06-24 00:56:47', NULL),
(647, '1', 'users/eb3f1350088f87636a74ede4a577ff21/1687525007/64963f4feede3.jpeg', 'WhatsApp Image 2022-03-24 at 14.37.57 (1).jpeg', '2023-06-24 00:56:48', NULL),
(648, '1', 'users/eb3f1350088f87636a74ede4a577ff21/1687525007/64963f500e2ff.jpeg', 'WhatsApp Image 2022-03-24 at 14.37.57 (2).jpeg', '2023-06-24 00:56:48', NULL),
(649, '1', 'users/eb3f1350088f87636a74ede4a577ff21/1687525007/64963f50211fa.jpeg', 'WhatsApp Image 2022-03-24 at 14.37.58 (1).jpeg', '2023-06-24 00:56:48', NULL),
(650, '1', 'users/eb3f1350088f87636a74ede4a577ff21/1687525007/64963f503564b.jpeg', 'WhatsApp Image 2022-03-24 at 14.38.03 (1).jpeg', '2023-06-24 00:56:48', NULL),
(651, '1', 'users/eb3f1350088f87636a74ede4a577ff21/1687525007/64963f5048e55.jpeg', 'WhatsApp Image 2022-03-24 at 14.38.03 (3).jpeg', '2023-06-24 00:56:48', NULL),
(652, '1', 'users/eb3f1350088f87636a74ede4a577ff21/1687525007/64963f505b16e.jpeg', 'WhatsApp Image 2022-03-24 at 14.38.04 (2).jpeg', '2023-06-24 00:56:48', NULL),
(653, '1', 'users/eb3f1350088f87636a74ede4a577ff21/1687525007/64963f506e928.jpeg', 'WhatsApp Image 2022-03-24 at 14.38.04.jpeg', '2023-06-24 00:56:48', NULL),
(654, '1', 'users/eb3f1350088f87636a74ede4a577ff21/1687525007/64963f5081270.jpeg', 'WhatsApp Image 2022-03-24 at 14.38.05 (3).jpeg', '2023-06-24 00:56:48', NULL),
(655, '1', 'users/eb3f1350088f87636a74ede4a577ff21/1687525007/64963f50942b1.jpeg', 'WhatsApp Image 2022-03-24 at 14.38.05.jpeg', '2023-06-24 00:56:48', NULL),
(656, '1', 'users/eb3f1350088f87636a74ede4a577ff21/1687525007/64963f50a4ab5.jpeg', 'WhatsApp Image 2022-03-24 at 14.38.06 (2).jpeg', '2023-06-24 00:56:48', NULL),
(657, '1', 'users/eb3f1350088f87636a74ede4a577ff21/1687525007/64963f50b6bcc.jpeg', 'WhatsApp Image 2022-03-24 at 14.38.08 (1).jpeg', '2023-06-24 00:56:48', NULL),
(724, '2', 'users/eb3f1350088f87636a74ede4a577ff21/1687587090/649731d27b7a1.jpg', '2016-07-24.jpg', '2023-06-24 18:11:30', NULL),
(725, '2', 'users/eb3f1350088f87636a74ede4a577ff21/1687587090/649731d2847bd.jpeg', 'IMG_4581.JPEG', '2023-06-24 18:11:30', NULL),
(726, '2', 'users/eb3f1350088f87636a74ede4a577ff21/1687587090/649731d2a5691.jpeg', 'IMG_4582.JPEG', '2023-06-24 18:11:30', NULL),
(727, '2', 'users/eb3f1350088f87636a74ede4a577ff21/1687587090/649731d2c60c2.jpeg', 'IMG_4583.JPEG', '2023-06-24 18:11:30', NULL),
(728, '2', 'users/eb3f1350088f87636a74ede4a577ff21/1687587090/649731d2e6190.jpeg', 'IMG_4584.JPEG', '2023-06-24 18:11:31', NULL),
(729, '2', 'users/eb3f1350088f87636a74ede4a577ff21/1687587090/649731d312107.jpeg', 'IMG_4585.JPEG', '2023-06-24 18:11:31', NULL),
(730, '2', 'users/eb3f1350088f87636a74ede4a577ff21/1687587090/649731d331617.jpeg', 'IMG_4586.JPEG', '2023-06-24 18:11:31', NULL),
(731, '3', 'users/eb3f1350088f87636a74ede4a577ff21/1687587689/6497342910159.jpg', 'apto-coxipo.jpg', '2023-06-24 18:21:29', NULL),
(732, '3', 'users/eb3f1350088f87636a74ede4a577ff21/1687587689/6497342924617.jpg', 'apto-coxipo-2.jpg', '2023-06-24 18:21:29', NULL),
(733, '3', 'users/eb3f1350088f87636a74ede4a577ff21/1687587689/649734293e872.jpg', 'apto-coxipo-5.jpg', '2023-06-24 18:21:29', NULL),
(734, '3', 'users/eb3f1350088f87636a74ede4a577ff21/1687587689/64973429518af.jpg', 'apto-coxipo-10.jpg', '2023-06-24 18:21:29', NULL),
(735, '3', 'users/eb3f1350088f87636a74ede4a577ff21/1687587689/6497342964e8d.jpg', 'apto-coxipo-12.jpg', '2023-06-24 18:21:29', NULL),
(736, '3', 'users/eb3f1350088f87636a74ede4a577ff21/1687587689/649734297816b.jpg', 'apto-coxipo-15.jpg', '2023-06-24 18:21:29', NULL),
(737, '3', 'users/eb3f1350088f87636a74ede4a577ff21/1687587689/649734298b669.jpg', 'apto-coxipo-16.jpg', '2023-06-24 18:21:29', NULL),
(738, '3', 'users/eb3f1350088f87636a74ede4a577ff21/1687587689/64973429a22ff.jpg', 'apto-coxipo-17.jpg', '2023-06-24 18:21:29', NULL),
(739, '4', 'users/eb3f1350088f87636a74ede4a577ff21/1687709746/649868329cdc0.jpg', '2.jpg', '2023-06-25 16:15:46', NULL),
(740, '4', 'users/eb3f1350088f87636a74ede4a577ff21/1687709746/64986832a1f91.jpg', '3.jpg', '2023-06-25 16:15:46', NULL),
(741, '4', 'users/eb3f1350088f87636a74ede4a577ff21/1687709746/64986832a6c66.jpg', '5.jpg', '2023-06-25 16:15:46', NULL),
(742, '4', 'users/eb3f1350088f87636a74ede4a577ff21/1687709746/64986832ab7d1.jpg', '7 (1).jpg', '2023-06-25 16:15:46', NULL),
(743, '4', 'users/eb3f1350088f87636a74ede4a577ff21/1687709746/64986832b01fd.jpg', '7.jpg', '2023-06-25 16:15:46', NULL),
(744, '4', 'users/eb3f1350088f87636a74ede4a577ff21/1687709746/64986832b4cd7.jpg', '8.jpg', '2023-06-25 16:15:46', NULL),
(745, '4', 'users/eb3f1350088f87636a74ede4a577ff21/1687709746/64986832b97f0.jpg', '10.jpg', '2023-06-25 16:15:46', NULL),
(747, '5', 'users/eb3f1350088f87636a74ede4a577ff21/1687709970/64986913076ab.jpg', '2.jpg', '2023-06-25 16:19:31', NULL),
(748, '5', 'users/eb3f1350088f87636a74ede4a577ff21/1687709970/64986913120dd.jpg', '3.jpg', '2023-06-25 16:19:31', NULL),
(749, '5', 'users/eb3f1350088f87636a74ede4a577ff21/1687709970/649869131c4a9.jpg', '5.jpg', '2023-06-25 16:19:31', NULL),
(750, '5', 'users/eb3f1350088f87636a74ede4a577ff21/1687709970/6498691326a24.jpg', '6.jpg', '2023-06-25 16:19:31', NULL),
(751, '5', 'users/eb3f1350088f87636a74ede4a577ff21/1687709970/6498691331043.jpg', '7.jpg', '2023-06-25 16:19:31', NULL),
(752, '5', 'users/eb3f1350088f87636a74ede4a577ff21/1687709970/649869133b6f8.jpg', '8.jpg', '2023-06-25 16:19:31', NULL),
(753, '5', 'users/eb3f1350088f87636a74ede4a577ff21/1687709970/6498691345c90.jpg', '9.jpg', '2023-06-25 16:19:31', NULL),
(754, '5', 'users/eb3f1350088f87636a74ede4a577ff21/1687709970/6498691350149.jpg', '10.jpg', '2023-06-25 16:19:31', NULL),
(755, '5', 'users/eb3f1350088f87636a74ede4a577ff21/1687709970/649869135a5f8.jpg', '11.jpg', '2023-06-25 16:19:31', NULL),
(756, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787634/649998720c112.jpeg', 'IMG_3974.JPEG', '2023-06-26 13:53:54', NULL),
(757, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/6499988fb25b2.jpeg', 'IMG_3948.JPEG', '2023-06-26 13:54:23', NULL),
(758, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/6499988fd17cb.jpeg', 'IMG_3949.JPEG', '2023-06-26 13:54:23', NULL),
(759, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/6499988ff29a7.jpeg', 'IMG_3950.JPEG', '2023-06-26 13:54:24', NULL),
(760, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/649998901ed4b.jpeg', 'IMG_3951.JPEG', '2023-06-26 13:54:24', NULL),
(761, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/649998903f514.jpeg', 'IMG_3952.JPEG', '2023-06-26 13:54:24', NULL),
(762, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/649998905e9bd.jpeg', 'IMG_3953.JPEG', '2023-06-26 13:54:24', NULL),
(763, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/649998907ef64.jpeg', 'IMG_3954.JPEG', '2023-06-26 13:54:24', NULL),
(764, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/649998909ed2c.jpeg', 'IMG_3955.JPEG', '2023-06-26 13:54:24', NULL),
(765, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/64999890be7b2.jpeg', 'IMG_3957.JPEG', '2023-06-26 13:54:24', NULL),
(766, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/64999890de373.jpeg', 'IMG_3958.JPEG', '2023-06-26 13:54:25', NULL),
(767, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/6499989109f2a.jpeg', 'IMG_3959.JPEG', '2023-06-26 13:54:25', NULL),
(768, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/649998912b905.jpeg', 'IMG_3960.JPEG', '2023-06-26 13:54:25', NULL),
(769, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/649998914cd7d.jpeg', 'IMG_3961.JPEG', '2023-06-26 13:54:25', NULL),
(770, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/649998916c964.jpeg', 'IMG_3962.JPEG', '2023-06-26 13:54:25', NULL),
(771, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/649998918c540.jpeg', 'IMG_3963.JPEG', '2023-06-26 13:54:25', NULL),
(772, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/64999891ac2b5.jpeg', 'IMG_3970.JPEG', '2023-06-26 13:54:25', NULL),
(773, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/64999891cd57a.jpeg', 'IMG_3971.JPEG', '2023-06-26 13:54:25', NULL),
(774, '6', 'users/eb3f1350088f87636a74ede4a577ff21/1687787663/64999891ee91a.jpeg', 'IMG_3972.JPEG', '2023-06-26 13:54:26', NULL),
(775, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764001/6499e4e16695e.jpg', 'IMG-20230626-WA0123.jpg', '2023-06-26 19:20:01', NULL),
(776, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4fe47cda.jpg', 'Imagem do WhatsApp de 2023-06-26 à(s) 09.48.55.jpg', '2023-06-26 19:20:30', NULL),
(777, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4fe56ac4.jpg', 'IMG-20230626-WA0113.jpg', '2023-06-26 19:20:30', NULL),
(778, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4fe64ee3.jpg', 'IMG-20230626-WA0114.jpg', '2023-06-26 19:20:30', NULL),
(779, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4fe72778.jpg', 'IMG-20230626-WA0115.jpg', '2023-06-26 19:20:30', NULL),
(780, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4fe8031b.jpg', 'IMG-20230626-WA0116.jpg', '2023-06-26 19:20:30', NULL),
(781, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4fe8d921.jpg', 'IMG-20230626-WA0117.jpg', '2023-06-26 19:20:30', NULL),
(782, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4fe9b426.jpg', 'IMG-20230626-WA0118.jpg', '2023-06-26 19:20:30', NULL),
(783, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4fea8b7a.jpg', 'IMG-20230626-WA0119.jpg', '2023-06-26 19:20:30', NULL),
(784, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4feb6284.jpg', 'IMG-20230626-WA0120.jpg', '2023-06-26 19:20:30', NULL),
(785, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4fec3697.jpg', 'IMG-20230626-WA0121.jpg', '2023-06-26 19:20:30', NULL),
(786, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4fed0b0f.jpg', 'IMG-20230626-WA0122.jpg', '2023-06-26 19:20:30', NULL),
(787, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4fedd31b.jpg', 'IMG-20230626-WA0124.jpg', '2023-06-26 19:20:30', NULL),
(788, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4feeb082.jpg', 'IMG-20230626-WA0125.jpg', '2023-06-26 19:20:31', NULL),
(789, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4ff0380f.jpg', 'IMG-20230626-WA0126.jpg', '2023-06-26 19:20:31', NULL),
(790, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4ff114f4.jpg', 'IMG-20230626-WA0127.jpg', '2023-06-26 19:20:31', NULL),
(791, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4ff22db7.jpg', 'IMG-20230626-WA0128.jpg', '2023-06-26 19:20:31', NULL),
(792, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4ff34372.jpg', 'IMG-20230626-WA0129.jpg', '2023-06-26 19:20:31', NULL),
(793, '7', 'users/eb3f1350088f87636a74ede4a577ff21/1687764030/6499e4ff4278e.jpg', 'IMG-20230626-WA0130.jpg', '2023-06-26 19:20:31', NULL),
(794, '8', 'users/eb3f1350088f87636a74ede4a577ff21/1687765110/6499e936756d1.jpg', 'IMG-20230626-WA0145.jpg', '2023-06-26 19:38:30', NULL),
(795, '8', 'users/eb3f1350088f87636a74ede4a577ff21/1687765125/6499e945ca043.jpg', 'IMG-20230626-WA0140.jpg', '2023-06-26 19:38:45', NULL),
(796, '8', 'users/eb3f1350088f87636a74ede4a577ff21/1687765125/6499e945d8c70.jpg', 'IMG-20230626-WA0141.jpg', '2023-06-26 19:38:45', NULL),
(797, '8', 'users/eb3f1350088f87636a74ede4a577ff21/1687765125/6499e945e5408.jpg', 'IMG-20230626-WA0142.jpg', '2023-06-26 19:38:45', NULL),
(798, '8', 'users/eb3f1350088f87636a74ede4a577ff21/1687765125/6499e945f1219.jpg', 'IMG-20230626-WA0143.jpg', '2023-06-26 19:38:46', NULL),
(799, '8', 'users/eb3f1350088f87636a74ede4a577ff21/1687765125/6499e9460ab1e.jpg', 'IMG-20230626-WA0144.jpg', '2023-06-26 19:38:46', NULL),
(800, '8', 'users/eb3f1350088f87636a74ede4a577ff21/1687765125/6499e9461a42d.jpg', 'IMG-20230626-WA0146.jpg', '2023-06-26 19:38:46', NULL),
(801, '8', 'users/eb3f1350088f87636a74ede4a577ff21/1687765125/6499e94627307.jpg', 'IMG-20230626-WA0147.jpg', '2023-06-26 19:38:46', NULL),
(802, '8', 'users/eb3f1350088f87636a74ede4a577ff21/1687765125/6499e94633101.jpg', 'IMG-20230626-WA0148.jpg', '2023-06-26 19:38:46', NULL),
(803, '8', 'users/eb3f1350088f87636a74ede4a577ff21/1687765125/6499e9463fb2f.jpg', 'IMG-20230626-WA0149.jpg', '2023-06-26 19:38:46', NULL),
(804, '8', 'users/eb3f1350088f87636a74ede4a577ff21/1687765125/6499e9464c4f6.jpg', 'IMG-20230626-WA0150.jpg', '2023-06-26 19:38:46', NULL),
(805, '8', 'users/eb3f1350088f87636a74ede4a577ff21/1687765125/6499e9465f80a.jpg', 'IMG-20230626-WA0151.jpg', '2023-06-26 19:38:46', NULL),
(806, '8', 'users/eb3f1350088f87636a74ede4a577ff21/1687765125/6499e9466d710.jpg', 'IMG-20230626-WA0152.jpg', '2023-06-26 19:38:46', NULL),
(807, '8', 'users/eb3f1350088f87636a74ede4a577ff21/1687765125/6499e94680a39.jpg', 'IMG-20230626-WA0153.jpg', '2023-06-26 19:38:46', NULL),
(815, '9', 'users/5c6749724816a694445f490036327eaa/1687781500/649a293d0f824.jpeg', 'SALA2.jpeg', '2023-06-27 00:11:41', NULL),
(816, '9', 'users/5c6749724816a694445f490036327eaa/1687781609/649a29a915fe7.jpeg', 'QUARTO3.jpeg', '2023-06-27 00:13:29', NULL),
(817, '9', 'users/5c6749724816a694445f490036327eaa/1687781639/649a29c7add3e.jpeg', 'QUARTOS.jpeg', '2023-06-27 00:13:59', NULL),
(818, '9', 'users/5c6749724816a694445f490036327eaa/1687781661/649a29dd6a4c8.jpeg', 'COZIN HA.jpeg', '2023-06-27 00:14:21', NULL),
(819, '9', 'users/5c6749724816a694445f490036327eaa/1687781677/649a29ed267cd.jpeg', 'COZINHZ 2.jpeg', '2023-06-27 00:14:37', NULL),
(820, '9', 'users/5c6749724816a694445f490036327eaa/1687781690/649a29faec14b.jpeg', 'BANHEIRO.jpeg', '2023-06-27 00:14:51', NULL),
(821, '10', 'users/eb3f1350088f87636a74ede4a577ff21/1687871152/649adeb0acf51.jpg', 'IMG-20230626-WA0162.jpg', '2023-06-27 13:05:52', NULL),
(822, '10', 'users/eb3f1350088f87636a74ede4a577ff21/1687871152/649adeb0c267b.jpg', 'IMG-20230626-WA0163.jpg', '2023-06-27 13:05:52', NULL),
(823, '10', 'users/eb3f1350088f87636a74ede4a577ff21/1687871152/649adeb0d7792.jpg', 'IMG-20230626-WA0164.jpg', '2023-06-27 13:05:52', NULL),
(824, '10', 'users/eb3f1350088f87636a74ede4a577ff21/1687871152/649adeb0eb73a.jpg', 'IMG-20230626-WA0165.jpg', '2023-06-27 13:05:53', NULL),
(825, '10', 'users/eb3f1350088f87636a74ede4a577ff21/1687871152/649adeb10b6c1.jpg', 'IMG-20230626-WA0166.jpg', '2023-06-27 13:05:53', NULL),
(826, '10', 'users/eb3f1350088f87636a74ede4a577ff21/1687871152/649adeb120ff7.jpg', 'IMG-20230626-WA0167.jpg', '2023-06-27 13:05:53', NULL),
(827, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871597/649ae06dbe1aa.jpg', 'IMG-20230626-WA0179.jpg', '2023-06-27 13:13:17', NULL),
(828, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae0804c756.jpg', 'IMG-20230626-WA0177.jpg', '2023-06-27 13:13:36', NULL),
(829, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae08064a2c.jpg', 'IMG-20230626-WA0178.jpg', '2023-06-27 13:13:36', NULL),
(830, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae0807d133.jpg', 'IMG-20230626-WA0180.jpg', '2023-06-27 13:13:36', NULL),
(831, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae08093f28.jpg', 'IMG-20230626-WA0181.jpg', '2023-06-27 13:13:36', NULL),
(832, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae080aae74.jpg', 'IMG-20230626-WA0182.jpg', '2023-06-27 13:13:36', NULL),
(833, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae080c45d1.jpg', 'IMG-20230626-WA0183.jpg', '2023-06-27 13:13:36', NULL),
(834, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae080d9eb6.jpg', 'IMG-20230626-WA0184.jpg', '2023-06-27 13:13:36', NULL),
(835, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae080ee861.jpg', 'IMG-20230626-WA0185.jpg', '2023-06-27 13:13:37', NULL),
(836, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae08110f6f.jpg', 'IMG-20230626-WA0186.jpg', '2023-06-27 13:13:37', NULL),
(837, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae08125e34.jpg', 'IMG-20230626-WA0187.jpg', '2023-06-27 13:13:37', NULL),
(838, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae0813b558.jpg', 'IMG-20230626-WA0188.jpg', '2023-06-27 13:13:37', NULL),
(839, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae081509d4.jpg', 'IMG-20230626-WA0189.jpg', '2023-06-27 13:13:37', NULL),
(840, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae08166476.jpg', 'IMG-20230626-WA0190.jpg', '2023-06-27 13:13:37', NULL),
(841, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae0817c4d2.jpg', 'IMG-20230626-WA0191.jpg', '2023-06-27 13:13:37', NULL),
(842, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae08191db1.jpg', 'IMG-20230626-WA0192.jpg', '2023-06-27 13:13:37', NULL),
(843, '11', 'users/eb3f1350088f87636a74ede4a577ff21/1687871616/649ae081a6ca5.jpg', 'IMG-20230626-WA0193.jpg', '2023-06-27 13:13:37', NULL),
(844, '12', 'users/eb3f1350088f87636a74ede4a577ff21/1687956552/649c2c48069bb.jpeg', 'IMG_4684.JPEG', '2023-06-28 12:49:12', NULL),
(845, '12', 'users/eb3f1350088f87636a74ede4a577ff21/1687956621/649c2c8d1939e.jpeg', 'IMG_4683.JPEG', '2023-06-28 12:50:21', NULL),
(846, '12', 'users/eb3f1350088f87636a74ede4a577ff21/1687956621/649c2c8d3a0fe.jpeg', 'IMG_4685.JPEG', '2023-06-28 12:50:21', NULL),
(847, '12', 'users/eb3f1350088f87636a74ede4a577ff21/1687956621/649c2c8d5b55a.jpeg', 'IMG_4687.JPEG', '2023-06-28 12:50:21', NULL),
(848, '12', 'users/eb3f1350088f87636a74ede4a577ff21/1687956621/649c2c8d7fe2a.jpeg', 'IMG_4689.JPEG', '2023-06-28 12:50:21', NULL),
(849, '12', 'users/eb3f1350088f87636a74ede4a577ff21/1687956621/649c2c8d9fa64.jpeg', 'IMG_4691.JPEG', '2023-06-28 12:50:21', NULL),
(850, '12', 'users/eb3f1350088f87636a74ede4a577ff21/1687956621/649c2c8dbfa68.jpeg', 'IMG_4692.JPEG', '2023-06-28 12:50:21', NULL),
(851, '12', 'users/eb3f1350088f87636a74ede4a577ff21/1687956621/649c2c8de18cd.jpeg', 'IMG_4693.JPEG', '2023-06-28 12:50:22', NULL),
(852, '12', 'users/eb3f1350088f87636a74ede4a577ff21/1687956621/649c2c8e13b23.jpeg', 'IMG_4694.JPEG', '2023-06-28 12:50:22', NULL),
(853, '12', 'users/eb3f1350088f87636a74ede4a577ff21/1687956621/649c2c8e33b05.jpeg', 'IMG_4695.JPEG', '2023-06-28 12:50:22', NULL),
(854, '12', 'users/eb3f1350088f87636a74ede4a577ff21/1687956621/649c2c8e5392e.jpeg', 'IMG_4696.JPEG', '2023-06-28 12:50:22', NULL),
(855, '12', 'users/eb3f1350088f87636a74ede4a577ff21/1687956621/649c2c8e72fb5.jpeg', 'IMG_4699.JPEG', '2023-06-28 12:50:22', NULL),
(857, '13', 'users/eb3f1350088f87636a74ede4a577ff21/1687939042/649c90a2a03c5.jpeg', 'IMG_5963.JPEG', '2023-06-28 19:57:22', NULL),
(858, '13', 'users/eb3f1350088f87636a74ede4a577ff21/1687939042/649c90a2c1026.jpeg', 'IMG_5965.JPEG', '2023-06-28 19:57:22', NULL),
(859, '13', 'users/eb3f1350088f87636a74ede4a577ff21/1687939042/649c90a2e27ca.jpeg', 'IMG_5970.JPEG', '2023-06-28 19:57:23', NULL),
(860, '13', 'users/eb3f1350088f87636a74ede4a577ff21/1687939042/649c90a30e022.jpeg', 'IMG_5971.JPEG', '2023-06-28 19:57:23', NULL),
(861, '13', 'users/eb3f1350088f87636a74ede4a577ff21/1687939042/649c90a32e0d7.jpeg', 'IMG_5972.JPEG', '2023-06-28 19:57:23', NULL),
(862, '13', 'users/eb3f1350088f87636a74ede4a577ff21/1687939042/649c90a34d90d.jpeg', 'IMG_5973.JPEG', '2023-06-28 19:57:23', NULL),
(863, '13', 'users/eb3f1350088f87636a74ede4a577ff21/1687939042/649c90a36c424.jpeg', 'IMG_5974.JPEG', '2023-06-28 19:57:23', NULL),
(865, '14', 'users/eb3f1350088f87636a74ede4a577ff21/1687945903/649cab6f1ac25.jpg', 'Imagem do WhatsApp de 2023-06-28 à(s) 09.28.522.jpg', '2023-06-28 21:51:43', NULL),
(866, '14', 'users/eb3f1350088f87636a74ede4a577ff21/1687945918/649cab7e102e9.jpg', 'Imagem do WhatsApp de 2023-06-28 à(s) 09.28.52.jpg', '2023-06-28 21:51:58', NULL),
(867, '14', 'users/eb3f1350088f87636a74ede4a577ff21/1687945918/649cab7e25306.jpg', 'Imagem do WhatsApp de 2023-06-28 à(s) 09.28.53.jpg', '2023-06-28 21:51:58', NULL),
(868, '15', 'users/261bd6a395b9e3eec41b65e4de532ee6/1688048988/649d955c49263.jpeg', 'WhatsApp Image 2023-06-29 at 11.24.44.jpeg', '2023-06-29 14:29:48', NULL),
(869, '15', 'users/261bd6a395b9e3eec41b65e4de532ee6/1688048988/649d955c570df.jpeg', 'WhatsApp Image 2023-06-29 at 11.24.43.jpeg', '2023-06-29 14:29:48', NULL),
(870, '15', 'users/261bd6a395b9e3eec41b65e4de532ee6/1688048988/649d955c6314e.jpeg', 'WhatsApp Image 2023-06-29 at 11.24.42.jpeg', '2023-06-29 14:29:48', NULL),
(871, '15', 'users/261bd6a395b9e3eec41b65e4de532ee6/1688048988/649d955c78f62.jpeg', 'WhatsApp Image 2023-06-26 at 18.43.31.jpeg', '2023-06-29 14:29:48', NULL),
(872, '15', 'users/261bd6a395b9e3eec41b65e4de532ee6/1688048988/649d955c867cc.jpeg', 'WhatsApp Image 2023-06-26 at 18.43.32.jpeg', '2023-06-29 14:29:48', NULL),
(873, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053271/649da617730b2.jpg', 'IMG-20230629-WA0052.jpg', '2023-06-29 15:41:11', NULL),
(874, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053287/649da627bc07d.jpg', 'IMG-20230629-WA0051.jpg', '2023-06-29 15:41:27', NULL),
(875, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053287/649da627d1bc2.jpg', 'IMG-20230629-WA0053.jpg', '2023-06-29 15:41:27', NULL),
(876, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053287/649da627e6f08.jpg', 'IMG-20230629-WA0054.jpg', '2023-06-29 15:41:28', NULL),
(877, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053287/649da62809793.jpg', 'IMG-20230629-WA0055.jpg', '2023-06-29 15:41:28', NULL),
(878, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053287/649da6281f3ac.jpg', 'IMG-20230629-WA0056.jpg', '2023-06-29 15:41:28', NULL),
(879, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053287/649da62834327.jpg', 'IMG-20230629-WA0057.jpg', '2023-06-29 15:41:28', NULL),
(880, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053287/649da6284961a.jpg', 'IMG-20230629-WA0058.jpg', '2023-06-29 15:41:28', NULL),
(881, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053287/649da6285f588.jpg', 'IMG-20230629-WA0059.jpg', '2023-06-29 15:41:28', NULL),
(882, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053287/649da628761a9.jpg', 'IMG-20230629-WA0060.jpg', '2023-06-29 15:41:28', NULL),
(883, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053287/649da6288bfe5.jpg', 'IMG-20230629-WA0061.jpg', '2023-06-29 15:41:28', NULL),
(884, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053287/649da628a1ba0.jpg', 'IMG-20230629-WA0062.jpg', '2023-06-29 15:41:28', NULL),
(885, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053287/649da628b8050.jpg', 'IMG-20230629-WA0063.jpg', '2023-06-29 15:41:28', NULL),
(886, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053287/649da628cce4e.jpg', 'IMG-20230629-WA0064.jpg', '2023-06-29 15:41:28', NULL),
(887, '16', 'users/eb3f1350088f87636a74ede4a577ff21/1688053287/649da628e2c16.jpg', 'IMG-20230629-WA0065.jpg', '2023-06-29 15:41:29', NULL),
(888, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457479/64a479c782f38.jpg', '2.jpg', '2023-07-04 19:57:59', 'users/eb3f1350088f87636a74ede4a577ff21/1688457479/64a479c782f38.webp'),
(889, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e6b5016.jpg', '1.jpg', '2023-07-04 19:58:30', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e6b5016.webp'),
(890, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e6c2b64.jpg', '3.jpg', '2023-07-04 19:58:30', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e6c2b64.webp'),
(891, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e6cfdba.jpg', '4.jpg', '2023-07-04 19:58:30', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e6cfdba.webp'),
(892, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e6dcae0.jpg', '5.jpg', '2023-07-04 19:58:30', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e6dcae0.webp'),
(893, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e6e99be.jpg', '6.jpg', '2023-07-04 19:58:31', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e6e99be.webp'),
(894, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e7021c7.jpg', '7.jpg', '2023-07-04 19:58:31', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e7021c7.webp'),
(895, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e710b2a.jpg', '8.jpg', '2023-07-04 19:58:31', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e710b2a.webp'),
(896, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e71d6d5.jpg', '9.jpg', '2023-07-04 19:58:31', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e71d6d5.webp'),
(897, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e72b653.jpg', '10.jpg', '2023-07-04 19:58:31', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e72b653.webp'),
(898, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e7391fa.jpg', '11.jpg', '2023-07-04 19:58:31', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e7391fa.webp'),
(899, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e74633e.jpg', '12.jpg', '2023-07-04 19:58:31', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e74633e.webp'),
(900, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e75320b.jpg', '13.jpg', '2023-07-04 19:58:31', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e75320b.webp'),
(901, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e7608a3.jpg', '14.jpg', '2023-07-04 19:58:31', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e7608a3.webp'),
(902, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e774c3e.jpg', '15.jpg', '2023-07-04 19:58:31', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e774c3e.webp'),
(903, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e782eb3.jpg', '16.jpg', '2023-07-04 19:58:31', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e782eb3.webp'),
(904, '17', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e791b24.jpg', '17.jpg', '2023-07-04 19:58:31', 'users/eb3f1350088f87636a74ede4a577ff21/1688457510/64a479e791b24.webp'),
(905, '18', 'users/eb3f1350088f87636a74ede4a577ff21/1688572154/64a590fa167d6.jpg', 'IMG-20230705-WA0030.jpg', '2023-07-05 15:49:14', 'users/eb3f1350088f87636a74ede4a577ff21/1688572154/64a590fa167d6.webp'),
(906, '18', 'users/eb3f1350088f87636a74ede4a577ff21/1688572169/64a591091f982.jpg', 'IMG-20230705-WA0028.jpg', '2023-07-05 15:49:29', 'users/eb3f1350088f87636a74ede4a577ff21/1688572169/64a591091f982.webp'),
(907, '18', 'users/eb3f1350088f87636a74ede4a577ff21/1688572169/64a591093bd8e.jpg', 'IMG-20230705-WA0029.jpg', '2023-07-05 15:49:29', 'users/eb3f1350088f87636a74ede4a577ff21/1688572169/64a591093bd8e.webp'),
(908, '18', 'users/eb3f1350088f87636a74ede4a577ff21/1688572169/64a591095a2e8.jpg', 'IMG-20230705-WA0031.jpg', '2023-07-05 15:49:29', 'users/eb3f1350088f87636a74ede4a577ff21/1688572169/64a591095a2e8.webp'),
(909, '18', 'users/eb3f1350088f87636a74ede4a577ff21/1688572169/64a5910976cf2.jpg', 'IMG-20230705-WA0032.jpg', '2023-07-05 15:49:29', 'users/eb3f1350088f87636a74ede4a577ff21/1688572169/64a5910976cf2.webp'),
(910, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628251/64a714db452a9.jpg', '343359291551944.jpg', '2023-07-06 19:24:11', 'users/eb3f1350088f87636a74ede4a577ff21/1688628251/64a714db452a9.webp'),
(911, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a7152200769.jpg', '271307179945122.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a7152200769.webp'),
(912, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a715220abba.jpg', '271361535438059.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a715220abba.webp'),
(913, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a7152213ff3.jpg', '272323774464567.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a7152213ff3.webp'),
(914, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a715221dd1a.jpg', '273378055655419.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a715221dd1a.webp'),
(915, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a7152227985.jpg', '273390415747181.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a7152227985.webp'),
(916, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a715223968e.jpg', '274344052927968.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a715223968e.webp'),
(917, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a715224a4b3.jpg', '274361170857470.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a715224a4b3.webp'),
(918, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a71522546cc.jpg', '276346658121560.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a71522546cc.webp'),
(919, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a7152261c12.jpg', '277304175245647.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a7152261c12.webp'),
(920, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a715226c299.jpg', '277347059736221.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a715226c299.webp'),
(921, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a7152276863.jpg', '277399654776478.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a7152276863.webp'),
(922, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a7152280b87.jpg', '278302890510589.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a7152280b87.webp'),
(923, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a715228f0c4.jpg', '279337536104360.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a715228f0c4.webp'),
(924, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a715229f4c5.jpg', '279383654114284.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a715229f4c5.webp'),
(925, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a71522af9ad.jpg', '279396771522024.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a71522af9ad.webp'),
(926, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a71522c0ea1.jpg', '340391178528887.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a71522c0ea1.webp'),
(927, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a71522d2bba.jpg', '345307050242206.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a71522d2bba.webp'),
(928, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a71522e1f8a.jpg', '346311176467032.jpg', '2023-07-06 19:25:22', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a71522e1f8a.webp'),
(929, '19', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a71522f231d.jpg', '349316179761176.jpg', '2023-07-06 19:25:23', 'users/eb3f1350088f87636a74ede4a577ff21/1688628322/64a71522f231d.webp'),
(930, '20', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7ae4f6d.jpg', 'IMG-20220817-WA0041.jpg', '2023-07-06 20:56:27', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7ae4f6d.webp'),
(931, '20', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7b0d42e.jpg', 'IMG-20220817-WA0042.jpg', '2023-07-06 20:56:27', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7b0d42e.webp'),
(932, '20', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7b23d8b.jpg', 'IMG-20220817-WA0038.jpg', '2023-07-06 20:56:27', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7b23d8b.webp'),
(933, '20', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7b3d877.jpg', 'IMG-20220817-WA0039.jpg', '2023-07-06 20:56:27', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7b3d877.webp'),
(934, '20', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7b5c8a7.jpg', 'IMG-20220817-WA0040.jpg', '2023-07-06 20:56:27', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7b5c8a7.webp'),
(935, '20', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7b7a94b.jpg', 'IMG-20220817-WA0028.jpg', '2023-07-06 20:56:27', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7b7a94b.webp'),
(936, '20', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7b991a3.jpg', 'IMG-20220817-WA0029.jpg', '2023-07-06 20:56:27', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7b991a3.webp'),
(937, '20', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7baf915.jpg', 'IMG-20220817-WA0027.jpg', '2023-07-06 20:56:27', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7baf915.webp'),
(938, '20', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7bc3cb7.jpg', 'IMG-20220817-WA0035.jpg', '2023-07-06 20:56:27', 'users/44fb085b99f1709566f46eb9c14b0bbd/1688633786/64a72a7bc3cb7.webp'),
(939, '21', 'users/eb3f1350088f87636a74ede4a577ff21/1688721210/64a87ffa9bc45.png', '5.png', '2023-07-07 21:13:30', 'users/eb3f1350088f87636a74ede4a577ff21/1688721210/64a87ffa9bc45.webp'),
(940, '21', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800b10525.png', '1.png', '2023-07-07 21:13:47', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800b10525.webp'),
(941, '21', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800b235ed.png', '2.png', '2023-07-07 21:13:47', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800b235ed.webp'),
(942, '21', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800b379e2.png', '3.png', '2023-07-07 21:13:47', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800b379e2.webp'),
(943, '21', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800b49c8b.png', '4.png', '2023-07-07 21:13:47', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800b49c8b.webp'),
(945, '21', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800b6fb48.png', '6.png', '2023-07-07 21:13:47', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800b6fb48.webp'),
(946, '21', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800b81516.png', '7.png', '2023-07-07 21:13:47', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800b81516.webp'),
(947, '21', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800b91e32.png', '8.png', '2023-07-07 21:13:47', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800b91e32.webp'),
(948, '21', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800ba2be8.png', '9.png', '2023-07-07 21:13:47', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800ba2be8.webp'),
(949, '21', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800bb5559.png', '10.png', '2023-07-07 21:13:47', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800bb5559.webp'),
(950, '21', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800bc5d15.png', '11.png', '2023-07-07 21:13:47', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800bc5d15.webp'),
(951, '21', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800bd7f03.png', '12.png', '2023-07-07 21:13:47', 'users/eb3f1350088f87636a74ede4a577ff21/1688721227/64a8800bd7f03.webp'),
(952, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157322/64af278a4076e.jpg', 'Imagem do WhatsApp de 2023-05-09 à(s) 08.36.37.jpg', '2023-07-12 22:22:02', 'users/eb3f1350088f87636a74ede4a577ff21/1689157322/64af278a4076e.webp'),
(953, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27db192ad.jpg', 'IMG-20230509-WA0140.jpg', '2023-07-12 22:23:23', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27db192ad.webp'),
(954, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27db356b0.jpg', 'IMG-20230509-WA0141.jpg', '2023-07-12 22:23:23', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27db356b0.webp'),
(955, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27db4c246.jpg', 'IMG-20230509-WA0142.jpg', '2023-07-12 22:23:23', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27db4c246.webp'),
(956, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27db6296f.jpg', 'IMG-20230509-WA0143.jpg', '2023-07-12 22:23:23', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27db6296f.webp'),
(957, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27db7ddc3.jpg', 'IMG-20230509-WA0144.jpg', '2023-07-12 22:23:23', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27db7ddc3.webp'),
(958, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dbab301.jpg', 'IMG-20230509-WA0145.jpg', '2023-07-12 22:23:23', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dbab301.webp'),
(959, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dbc1563.jpg', 'IMG-20230509-WA0146.jpg', '2023-07-12 22:23:23', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dbc1563.webp'),
(960, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dbdeb61.jpg', 'IMG-20230509-WA0147.jpg', '2023-07-12 22:23:24', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dbdeb61.webp'),
(961, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dc02d74.jpg', 'IMG-20230509-WA0148.jpg', '2023-07-12 22:23:24', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dc02d74.webp'),
(962, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dc1d845.jpg', 'IMG-20230509-WA0149.jpg', '2023-07-12 22:23:24', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dc1d845.webp'),
(963, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dc3a9ec.jpg', 'IMG-20230509-WA0150.jpg', '2023-07-12 22:23:24', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dc3a9ec.webp'),
(964, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dc58e03.jpg', 'IMG-20230509-WA0151.jpg', '2023-07-12 22:23:24', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dc58e03.webp'),
(965, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dc73a7f.jpg', 'IMG-20230509-WA0152.jpg', '2023-07-12 22:23:24', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dc73a7f.webp'),
(966, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dc8f8bc.jpg', 'IMG-20230509-WA0153.jpg', '2023-07-12 22:23:24', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dc8f8bc.webp'),
(967, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dca7fb3.jpg', 'IMG-20230509-WA0154.jpg', '2023-07-12 22:23:24', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dca7fb3.webp'),
(968, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dcc3813.jpg', 'IMG-20230509-WA0155.jpg', '2023-07-12 22:23:24', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dcc3813.webp'),
(969, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dcde7f3.jpg', 'IMG-20230509-WA0156.jpg', '2023-07-12 22:23:25', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dcde7f3.webp'),
(970, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dd05677.jpg', 'IMG-20230509-WA0157.jpg', '2023-07-12 22:23:25', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dd05677.webp'),
(971, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dd1fca0.jpg', 'IMG-20230509-WA0158.jpg', '2023-07-12 22:23:25', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dd1fca0.webp'),
(972, '22', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dd3b825.jpg', 'IMG-20230509-WA0159.jpg', '2023-07-12 22:23:25', 'users/eb3f1350088f87636a74ede4a577ff21/1689157403/64af27dd3b825.webp'),
(973, '23', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd280c75a.jpg', '0 0- CHAPADA DIAMANTINA.jpg', '2023-08-15 02:04:24', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd280c75a.webp'),
(974, '23', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd281b8f6.jpg', '01.jpg', '2023-08-15 02:04:24', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd281b8f6.webp'),
(975, '23', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd2829b11.jpg', '02.jpg', '2023-08-15 02:04:24', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd2829b11.webp'),
(976, '23', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd283a1ea.jpg', '04.jpg', '2023-08-15 02:04:24', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd283a1ea.webp'),
(977, '23', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd2848a8b.jpg', '05.jpg', '2023-08-15 02:04:24', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd2848a8b.webp'),
(978, '23', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd28580da.jpg', '06.jpg', '2023-08-15 02:04:24', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd28580da.webp'),
(979, '23', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd28670d0.jpg', '07.jpg', '2023-08-15 02:04:24', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd28670d0.webp'),
(980, '23', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd2876140.jpg', 'ACADEMIA.jpg', '2023-08-15 02:04:24', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd2876140.webp'),
(981, '23', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd2886fd1.jpeg', 'ARMÁRIOS PLANEJADOS - COZINHA.jpeg', '2023-08-15 02:04:24', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd2886fd1.webp'),
(982, '23', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd28aeb04.jpeg', 'BANHEIRO 1.jpeg', '2023-08-15 02:04:24', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd28aeb04.webp'),
(983, '23', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd28dcc6c.jpeg', 'COZINHA 2.jpeg', '2023-08-15 02:04:24', 'users/5c6749724816a694445f490036327eaa/1692021864/64dadd28dcc6c.webp'),
(995, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171912/64dd274807557.jpg', 'IMG-20230816-WA0132.jpg', '2023-08-16 19:45:12', 'users/eb3f1350088f87636a74ede4a577ff21/1692171912/64dd274807557.webp'),
(996, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275aa47c2.jpg', '-aFtTIW1rrtyeTUp5Lz2aiJ8TEQzIVsYwuhpnHL12V8=_plaintext_638278110775162010.jpg', '2023-08-16 19:45:30', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275aa47c2.webp'),
(997, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275abf65e.jpg', 'IMG-20230816-WA0122.jpg', '2023-08-16 19:45:30', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275abf65e.webp'),
(998, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275adbabb.jpg', 'IMG-20230816-WA0123.jpg', '2023-08-16 19:45:30', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275adbabb.webp'),
(999, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275aea055.jpg', 'IMG-20230816-WA0124.jpg', '2023-08-16 19:45:31', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275aea055.webp'),
(1000, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b03b44.jpg', 'IMG-20230816-WA0125.jpg', '2023-08-16 19:45:31', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b03b44.webp'),
(1001, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b17472.jpg', 'IMG-20230816-WA0126.jpg', '2023-08-16 19:45:31', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b17472.webp'),
(1002, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b2870c.jpg', 'IMG-20230816-WA0127.jpg', '2023-08-16 19:45:31', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b2870c.webp'),
(1003, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b39850.jpg', 'IMG-20230816-WA0128.jpg', '2023-08-16 19:45:31', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b39850.webp'),
(1004, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b4ac07.jpg', 'IMG-20230816-WA0129.jpg', '2023-08-16 19:45:31', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b4ac07.webp'),
(1005, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b60266.jpg', 'IMG-20230816-WA0130.jpg', '2023-08-16 19:45:31', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b60266.webp'),
(1006, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b75861.jpg', 'IMG-20230816-WA0131.jpg', '2023-08-16 19:45:31', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b75861.webp'),
(1007, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b8b817.jpg', 'IMG-20230816-WA0133.jpg', '2023-08-16 19:45:31', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275b8b817.webp'),
(1008, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275ba06ef.jpg', 'IMG-20230816-WA0134.jpg', '2023-08-16 19:45:31', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275ba06ef.webp'),
(1009, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275bb5702.jpg', 'IMG-20230816-WA0135.jpg', '2023-08-16 19:45:31', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275bb5702.webp'),
(1010, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275bc7bf4.jpg', 'IMG-20230816-WA0136.jpg', '2023-08-16 19:45:31', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275bc7bf4.webp'),
(1011, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275bdd3bd.jpg', 'IMG-20230816-WA0137.jpg', '2023-08-16 19:45:31', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275bdd3bd.webp'),
(1012, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275bf273b.jpg', 'IMG-20230816-WA0138.jpg', '2023-08-16 19:45:32', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275bf273b.webp'),
(1013, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275c13798.jpg', 'IMG-20230816-WA0139.jpg', '2023-08-16 19:45:32', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275c13798.webp'),
(1014, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275c28e89.jpg', 'IMG-20230816-WA0140.jpg', '2023-08-16 19:45:32', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275c28e89.webp'),
(1015, '24', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275c3e3a3.jpg', 'IMG-20230816-WA0141.jpg', '2023-08-16 19:45:32', 'users/eb3f1350088f87636a74ede4a577ff21/1692171930/64dd275c3e3a3.webp'),
(1016, '25', 'users/eb3f1350088f87636a74ede4a577ff21/1693217988/64ed1d8405e92.jpg', 'IMG-20230828-WA0394.jpg', '2023-08-28 22:19:48', 'users/eb3f1350088f87636a74ede4a577ff21/1693217988/64ed1d8405e92.webp'),
(1017, '25', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dcd62d35.jpg', 'IMG-20230828-WA0395.jpg', '2023-08-28 22:21:01', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dcd62d35.webp'),
(1018, '25', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dcd80535.jpg', 'IMG-20230828-WA0396.jpg', '2023-08-28 22:21:01', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dcd80535.webp'),
(1019, '25', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dcd9f7b5.jpg', 'IMG-20230828-WA0397.jpg', '2023-08-28 22:21:01', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dcd9f7b5.webp'),
(1020, '25', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dcdbcae4.jpg', 'IMG-20230828-WA0398.jpg', '2023-08-28 22:21:01', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dcdbcae4.webp'),
(1021, '25', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dcdd9da6.jpg', 'IMG-20230828-WA0399.jpg', '2023-08-28 22:21:02', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dcdd9da6.webp'),
(1022, '25', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dce01b62.jpg', 'IMG-20230828-WA0400.jpg', '2023-08-28 22:21:02', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dce01b62.webp'),
(1023, '25', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dce1d3e6.jpg', 'IMG-20230828-WA0401.jpg', '2023-08-28 22:21:02', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dce1d3e6.webp'),
(1024, '25', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dce3a51a.jpg', 'IMG-20230828-WA0402.jpg', '2023-08-28 22:21:02', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dce3a51a.webp'),
(1025, '25', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dce55b8d.jpg', 'IMG-20230828-WA0403.jpg', '2023-08-28 22:21:02', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dce55b8d.webp'),
(1026, '25', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dce72996.jpg', 'IMG-20230828-WA0404.jpg', '2023-08-28 22:21:02', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dce72996.webp'),
(1027, '25', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dce8ef5e.jpg', 'IMG-20230828-WA0405.jpg', '2023-08-28 22:21:02', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dce8ef5e.webp'),
(1028, '25', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dceaa3bf.jpg', 'IMG-20230828-WA0406.jpg', '2023-08-28 22:21:02', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dceaa3bf.webp'),
(1029, '25', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dcec9462.jpg', 'IMG-20230828-WA0407.jpg', '2023-08-28 22:21:02', 'users/eb3f1350088f87636a74ede4a577ff21/1693218061/64ed1dcec9462.webp'),
(1030, '26', 'users/eb3f1350088f87636a74ede4a577ff21/1693297880/64ee5598c53d7.jpg', 'IMG-20230829-WA0023.jpg', '2023-08-29 20:31:20', 'users/eb3f1350088f87636a74ede4a577ff21/1693297880/64ee5598c53d7.webp'),
(1031, '26', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55ab9ff67.jpg', 'IMG-20230829-WA0018.jpg', '2023-08-29 20:31:39', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55ab9ff67.webp'),
(1032, '26', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55abba97f.jpg', 'IMG-20230829-WA0019.jpg', '2023-08-29 20:31:39', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55abba97f.webp'),
(1033, '26', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55abd6e62.jpg', 'IMG-20230829-WA0020.jpg', '2023-08-29 20:31:39', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55abd6e62.webp'),
(1034, '26', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55abf2693.jpg', 'IMG-20230829-WA0021.jpg', '2023-08-29 20:31:40', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55abf2693.webp'),
(1035, '26', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55ac1ae3e.jpg', 'IMG-20230829-WA0022.jpg', '2023-08-29 20:31:40', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55ac1ae3e.webp');
INSERT INTO `imagem` (`id`, `id_imovel`, `url`, `nome`, `incluida_em`, `url_webp`) VALUES
(1036, '26', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55ac3cd99.jpg', 'IMG-20230829-WA0024.jpg', '2023-08-29 20:31:40', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55ac3cd99.webp'),
(1037, '26', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55ac59508.jpg', 'IMG-20230829-WA0025.jpg', '2023-08-29 20:31:40', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55ac59508.webp'),
(1038, '26', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55ac67f72.jpg', 'IMG-20230829-WA0026.jpg', '2023-08-29 20:31:40', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55ac67f72.webp'),
(1039, '26', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55ac8528d.jpg', 'IMG-20230829-WA0027.jpg', '2023-08-29 20:31:40', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55ac8528d.webp'),
(1040, '26', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55aca0bb7.jpg', 'IMG-20230829-WA0028.jpg', '2023-08-29 20:31:40', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55aca0bb7.webp'),
(1041, '26', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55acb1071.jpg', 'IMG-20230829-WA0029.jpg', '2023-08-29 20:31:40', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55acb1071.webp'),
(1042, '26', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55acc1891.jpg', 'IMG-20230829-WA0030.jpg', '2023-08-29 20:31:40', 'users/eb3f1350088f87636a74ede4a577ff21/1693297899/64ee55acc1891.webp'),
(1043, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401252/64ef40a4da4f6.jpg', '403385548347002.jpg', '2023-08-30 13:14:12', 'users/eb3f1350088f87636a74ede4a577ff21/1693401252/64ef40a4da4f6.webp'),
(1044, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b096c43.jpg', '400305668246260.jpg', '2023-08-30 13:14:24', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b096c43.webp'),
(1045, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b0a7b11.jpg', '401378786115844.jpg', '2023-08-30 13:14:24', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b0a7b11.webp'),
(1046, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b0b7752.jpg', '402309185142352.jpg', '2023-08-30 13:14:24', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b0b7752.webp'),
(1047, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b0c4600.jpg', '402365669152417.jpg', '2023-08-30 13:14:24', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b0c4600.webp'),
(1048, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b0d6f6a.jpg', '402366307676870.jpg', '2023-08-30 13:14:24', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b0d6f6a.webp'),
(1049, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b0e7911.jpg', '402367664639163.jpg', '2023-08-30 13:14:25', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b0e7911.webp'),
(1050, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b105856.jpg', '402395429586524.jpg', '2023-08-30 13:14:25', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b105856.webp'),
(1051, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b117049.jpg', '403326186350735.jpg', '2023-08-30 13:14:25', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b117049.webp'),
(1052, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b127640.jpg', '403361789538988.jpg', '2023-08-30 13:14:25', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b127640.webp'),
(1053, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b138144.jpg', '403366547525190.jpg', '2023-08-30 13:14:25', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b138144.webp'),
(1054, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b148a32.jpg', '404351669520323.jpg', '2023-08-30 13:14:25', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b148a32.webp'),
(1055, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b158395.jpg', '404370426870321.jpg', '2023-08-30 13:14:25', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b158395.webp'),
(1056, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b1653e5.jpg', '406375425762680.jpg', '2023-08-30 13:14:25', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b1653e5.webp'),
(1057, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b176ff8.jpg', '407349785391372.jpg', '2023-08-30 13:14:25', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b176ff8.webp'),
(1058, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b183ab6.jpg', '408326545193290.jpg', '2023-08-30 13:14:25', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b183ab6.webp'),
(1059, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b194ee1.jpg', '408345185777943.jpg', '2023-08-30 13:14:25', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b194ee1.webp'),
(1060, '27', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b1a6024.jpg', '408362303914691.jpg', '2023-08-30 13:14:25', 'users/eb3f1350088f87636a74ede4a577ff21/1693401264/64ef40b1a6024.webp'),
(1061, '28', 'users/eb3f1350088f87636a74ede4a577ff21/1693582127/64f2032f9dfbd.jpg', '906316430287083.jpg', '2023-09-01 15:28:47', 'users/eb3f1350088f87636a74ede4a577ff21/1693582127/64f2032f9dfbd.webp'),
(1062, '28', 'users/eb3f1350088f87636a74ede4a577ff21/1693582144/64f2034069a4b.jpg', '900314431392036.jpg', '2023-09-01 15:29:04', 'users/eb3f1350088f87636a74ede4a577ff21/1693582144/64f2034069a4b.webp'),
(1063, '28', 'users/eb3f1350088f87636a74ede4a577ff21/1693582144/64f2034076339.jpg', '900346676743392.jpg', '2023-09-01 15:29:04', 'users/eb3f1350088f87636a74ede4a577ff21/1693582144/64f2034076339.webp'),
(1064, '28', 'users/eb3f1350088f87636a74ede4a577ff21/1693582144/64f20340825cc.jpg', '904379553281005.jpg', '2023-09-01 15:29:04', 'users/eb3f1350088f87636a74ede4a577ff21/1693582144/64f20340825cc.webp'),
(1065, '28', 'users/eb3f1350088f87636a74ede4a577ff21/1693582144/64f20340900bd.jpg', '907396556237141.jpg', '2023-09-01 15:29:04', 'users/eb3f1350088f87636a74ede4a577ff21/1693582144/64f20340900bd.webp'),
(1066, '28', 'users/eb3f1350088f87636a74ede4a577ff21/1693582144/64f203409bb8a.jpg', '908300798058303.jpg', '2023-09-01 15:29:04', 'users/eb3f1350088f87636a74ede4a577ff21/1693582144/64f203409bb8a.webp'),
(1067, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697634/650308a21bf58.jpg', 'IMG-20230914-WA0014.jpg', '2023-09-14 13:20:34', 'users/eb3f1350088f87636a74ede4a577ff21/1694697634/650308a21bf58.webp'),
(1068, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b740acb.jpg', 'IMG-20230914-WA0006.jpg', '2023-09-14 13:20:55', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b740acb.webp'),
(1069, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b763011.jpg', 'IMG-20230914-WA0007.jpg', '2023-09-14 13:20:55', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b763011.webp'),
(1070, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b788b40.jpg', 'IMG-20230914-WA0008.jpg', '2023-09-14 13:20:55', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b788b40.webp'),
(1071, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b7aa675.jpg', 'IMG-20230914-WA0009.jpg', '2023-09-14 13:20:55', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b7aa675.webp'),
(1072, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b7cb457.jpg', 'IMG-20230914-WA0010.jpg', '2023-09-14 13:20:55', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b7cb457.webp'),
(1073, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b7ebb46.jpg', 'IMG-20230914-WA0011.jpg', '2023-09-14 13:20:56', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b7ebb46.webp'),
(1074, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b818650.jpg', 'IMG-20230914-WA0012.jpg', '2023-09-14 13:20:56', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b818650.webp'),
(1075, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b83a454.jpg', 'IMG-20230914-WA0013.jpg', '2023-09-14 13:20:56', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b83a454.webp'),
(1076, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b8499c8.jpg', 'IMG-20230914-WA0015.jpg', '2023-09-14 13:20:56', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b8499c8.webp'),
(1077, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b85aa75.jpg', 'IMG-20230914-WA0016.jpg', '2023-09-14 13:20:56', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b85aa75.webp'),
(1078, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b86ab2b.jpg', 'IMG-20230914-WA0017.jpg', '2023-09-14 13:20:56', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b86ab2b.webp'),
(1079, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b87b612.jpg', 'IMG-20230914-WA0018.jpg', '2023-09-14 13:20:56', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b87b612.webp'),
(1080, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b88d772.jpg', 'IMG-20230914-WA0019.jpg', '2023-09-14 13:20:56', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b88d772.webp'),
(1081, '29', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b89b4b4.jpg', 'IMG-20230914-WA0020.jpg', '2023-09-14 13:20:56', 'users/eb3f1350088f87636a74ede4a577ff21/1694697655/650308b89b4b4.webp'),
(1082, '30', 'users/eb3f1350088f87636a74ede4a577ff21/1694694383/6503a4af4d4fa.jpg', '686383918227710.jpg', '2023-09-15 00:26:23', 'users/eb3f1350088f87636a74ede4a577ff21/1694694383/6503a4af4d4fa.webp'),
(1083, '30', 'users/eb3f1350088f87636a74ede4a577ff21/1694694406/6503a4c6d8233.jpg', '682324191527817.jpg', '2023-09-15 00:26:46', 'users/eb3f1350088f87636a74ede4a577ff21/1694694406/6503a4c6d8233.webp'),
(1084, '30', 'users/eb3f1350088f87636a74ede4a577ff21/1694694406/6503a4c6e99fd.jpg', '683331438322060.jpg', '2023-09-15 00:26:47', 'users/eb3f1350088f87636a74ede4a577ff21/1694694406/6503a4c6e99fd.webp'),
(1085, '30', 'users/eb3f1350088f87636a74ede4a577ff21/1694694406/6503a4c706d12.jpg', '688310679993963.jpg', '2023-09-15 00:26:47', 'users/eb3f1350088f87636a74ede4a577ff21/1694694406/6503a4c706d12.webp'),
(1086, '30', 'users/eb3f1350088f87636a74ede4a577ff21/1694694406/6503a4c7171a3.jpg', '694333434393356.jpg', '2023-09-15 00:26:47', 'users/eb3f1350088f87636a74ede4a577ff21/1694694406/6503a4c7171a3.webp'),
(1087, '30', 'users/eb3f1350088f87636a74ede4a577ff21/1694694406/6503a4c72c318.jpg', '695395072239326.jpg', '2023-09-15 00:26:47', 'users/eb3f1350088f87636a74ede4a577ff21/1694694406/6503a4c72c318.webp'),
(1088, '31', 'users/eb3f1350088f87636a74ede4a577ff21/1694785754/650460da48b32.jpg', '752360562880761.jpg', '2023-09-15 13:49:14', 'users/eb3f1350088f87636a74ede4a577ff21/1694785754/650460da48b32.webp'),
(1089, '31', 'users/eb3f1350088f87636a74ede4a577ff21/1694785774/650460ee18354.jpg', '324379808571679.jpg', '2023-09-15 13:49:34', 'users/eb3f1350088f87636a74ede4a577ff21/1694785774/650460ee18354.webp'),
(1090, '31', 'users/eb3f1350088f87636a74ede4a577ff21/1694785774/650460ee2a54a.jpg', '752318447324611.jpg', '2023-09-15 13:49:34', 'users/eb3f1350088f87636a74ede4a577ff21/1694785774/650460ee2a54a.webp'),
(1091, '31', 'users/eb3f1350088f87636a74ede4a577ff21/1694785774/650460ee3b6fe.jpg', '754324809195107.jpg', '2023-09-15 13:49:34', 'users/eb3f1350088f87636a74ede4a577ff21/1694785774/650460ee3b6fe.webp'),
(1092, '31', 'users/eb3f1350088f87636a74ede4a577ff21/1694785774/650460ee4b4b5.jpg', '755302926809811.jpg', '2023-09-15 13:49:34', 'users/eb3f1350088f87636a74ede4a577ff21/1694785774/650460ee4b4b5.webp'),
(1093, '31', 'users/eb3f1350088f87636a74ede4a577ff21/1694785774/650460ee5b0a4.jpg', '755315804960594.jpg', '2023-09-15 13:49:34', 'users/eb3f1350088f87636a74ede4a577ff21/1694785774/650460ee5b0a4.webp'),
(1094, '31', 'users/eb3f1350088f87636a74ede4a577ff21/1694785774/650460ee6c38d.jpg', '756383801497914.jpg', '2023-09-15 13:49:34', 'users/eb3f1350088f87636a74ede4a577ff21/1694785774/650460ee6c38d.webp'),
(1116, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112328/650a054861908.jpg', 'lightroom-23.jpg', '2023-09-19 20:32:09', 'users/eb3f1350088f87636a74ede4a577ff21/1695112328/650a054861908.webp'),
(1117, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a05642dfca.jpg', 'lightroom-1.jpg', '2023-09-19 20:32:36', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a05642dfca.webp'),
(1118, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a0564e1c6b.jpg', 'lightroom-2.jpg', '2023-09-19 20:32:37', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a0564e1c6b.webp'),
(1119, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a05659fed2.jpg', 'lightroom-3.jpg', '2023-09-19 20:32:38', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a05659fed2.webp'),
(1120, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a0566548c6.jpg', 'lightroom-4.jpg', '2023-09-19 20:32:39', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a0566548c6.webp'),
(1121, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a05670b588.jpg', 'lightroom-5.jpg', '2023-09-19 20:32:39', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a05670b588.webp'),
(1122, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a0567b0788.jpg', 'lightroom-6.jpg', '2023-09-19 20:32:40', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a0567b0788.webp'),
(1123, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a0568634a3.jpg', 'lightroom-7.jpg', '2023-09-19 20:32:41', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a0568634a3.webp'),
(1124, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a05691624a.jpg', 'lightroom-8.jpg', '2023-09-19 20:32:41', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a05691624a.webp'),
(1125, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a0569b7cf9.jpg', 'lightroom-9.jpg', '2023-09-19 20:32:42', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a0569b7cf9.webp'),
(1126, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056a5f76b.jpg', 'lightroom-10.jpg', '2023-09-19 20:32:43', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056a5f76b.webp'),
(1127, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056b0b890.jpg', 'lightroom-11.jpg', '2023-09-19 20:32:43', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056b0b890.webp'),
(1128, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056bab7aa.jpg', 'lightroom-12.jpg', '2023-09-19 20:32:44', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056bab7aa.webp'),
(1129, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056c5811a.jpg', 'lightroom-13.jpg', '2023-09-19 20:32:45', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056c5811a.webp'),
(1130, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056d08330.jpg', 'lightroom-14.jpg', '2023-09-19 20:32:45', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056d08330.webp'),
(1131, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056da8638.jpg', 'lightroom-15.jpg', '2023-09-19 20:32:46', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056da8638.webp'),
(1132, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056e50e0d.jpg', 'lightroom-16.jpg', '2023-09-19 20:32:47', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056e50e0d.webp'),
(1133, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056f00949.jpg', 'lightroom-17.jpg', '2023-09-19 20:32:47', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056f00949.webp'),
(1134, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056fa0634.jpg', 'lightroom-18.jpg', '2023-09-19 20:32:48', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a056fa0634.webp'),
(1135, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a05704c58d.jpg', 'lightroom-19.jpg', '2023-09-19 20:32:48', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a05704c58d.webp'),
(1136, '32', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a0570f41c3.jpg', 'lightroom-20.jpg', '2023-09-19 20:32:49', 'users/eb3f1350088f87636a74ede4a577ff21/1695112356/650a0570f41c3.webp'),
(1137, '33', 'users/eb3f1350088f87636a74ede4a577ff21/1695900562/65160c52e1c47.jpg', 'IMG-20230928-WA0187.jpg', '2023-09-28 23:29:23', 'users/eb3f1350088f87636a74ede4a577ff21/1695900562/65160c52e1c47.webp'),
(1138, '33', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7bc86b2.jpg', 'IMG-20230928-WA0184.jpg', '2023-09-28 23:30:03', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7bc86b2.webp'),
(1139, '33', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7bebeb7.jpg', 'IMG-20230928-WA0185.jpg', '2023-09-28 23:30:04', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7bebeb7.webp'),
(1140, '33', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7c1e259.jpg', 'IMG-20230928-WA0186.jpg', '2023-09-28 23:30:04', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7c1e259.webp'),
(1141, '33', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7c40ebf.jpg', 'IMG-20230928-WA0187.jpg', '2023-09-28 23:30:04', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7c40ebf.webp'),
(1142, '33', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7c6477b.jpg', 'IMG-20230928-WA0188.jpg', '2023-09-28 23:30:04', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7c6477b.webp'),
(1143, '33', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7c87dfb.jpg', 'IMG-20230928-WA0189.jpg', '2023-09-28 23:30:04', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7c87dfb.webp'),
(1144, '33', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7cab49f.jpg', 'IMG-20230928-WA0190.jpg', '2023-09-28 23:30:04', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7cab49f.webp'),
(1145, '33', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7ccf829.jpg', 'IMG-20230928-WA0191.jpg', '2023-09-28 23:30:04', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7ccf829.webp'),
(1146, '33', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7cf3512.jpg', 'IMG-20230928-WA0192.jpg', '2023-09-28 23:30:05', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7cf3512.webp'),
(1147, '33', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7d238ef.jpg', 'IMG-20230928-WA0193.jpg', '2023-09-28 23:30:05', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7d238ef.webp'),
(1148, '33', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7d48b20.jpg', 'IMG-20230928-WA0194.jpg', '2023-09-28 23:30:05', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7d48b20.webp'),
(1149, '33', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7d6c263.jpg', 'IMG-20230928-WA0196.jpg', '2023-09-28 23:30:05', 'users/eb3f1350088f87636a74ede4a577ff21/1695900603/65160c7d6c263.webp');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imovel`
--

CREATE TABLE `imovel` (
  `id_imovel` int(11) NOT NULL,
  `cod_imovel` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `id_bairro` varchar(255) NOT NULL,
  `id_proprietario` varchar(255) NOT NULL,
  `valor` int(11) DEFAULT NULL,
  `valor_condominio` int(11) DEFAULT NULL,
  `iptu` int(11) DEFAULT NULL,
  `area_construida` varchar(255) DEFAULT NULL,
  `quartos` varchar(255) DEFAULT NULL,
  `banheiros` varchar(255) DEFAULT NULL,
  `garagem` varchar(255) DEFAULT NULL,
  `andar` varchar(255) DEFAULT NULL,
  `cozinha` varchar(255) DEFAULT NULL,
  `sala` varchar(255) DEFAULT NULL,
  `garden` varchar(255) DEFAULT NULL,
  `sacada` varchar(255) DEFAULT NULL,
  `lavanderia` varchar(255) DEFAULT NULL,
  `suite` varchar(255) DEFAULT NULL,
  `elevador` varchar(255) DEFAULT NULL,
  `area_lazer` varchar(255) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `views` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1' COMMENT '"1=Ativado | 2=Desativado"',
  `data_criacao` datetime DEFAULT NULL,
  `data_atualizacao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `imovel`
--

INSERT INTO `imovel` (`id_imovel`, `cod_imovel`, `titulo`, `id_bairro`, `id_proprietario`, `valor`, `valor_condominio`, `iptu`, `area_construida`, `quartos`, `banheiros`, `garagem`, `andar`, `cozinha`, `sala`, `garden`, `sacada`, `lavanderia`, `suite`, `elevador`, `area_lazer`, `descricao`, `views`, `status`, `data_criacao`, `data_atualizacao`) VALUES
(1, '20230001', 'Apartamento na Planta Próximo a Av. Beira Rio em Cuiabá', '60', '16', 237300, 450, 0, '44,82', '2', '1', '1', NULL, '1', '1', '0', '0', '1', '1', '1', '1', 'Apartamento na planta, próximo a Av. Beira Rio em Cuiabá. Excelente localização para estudantes, tanto da UNIC, UNIVAG e UFMT. Se você busca um imóvel nesta Região, o Condomínio Bela Marina é ideal, uma mistura de alto padrão com preço que cabe no seu orçamento. Com acabamento em porcelanato e gesso.', '89', '1', '2023-06-23 08:56:47', '2023-06-23 09:48:15'),
(2, '20230002', 'Excelente para estudantes próx. a UNIVAG e UNIC', '24', '16', 220000, 0, 0, '50', '2', '1', '1', NULL, '1', '1', '0', '0', '1', '1', '0', '1', 'Você está em busca de um apartamento aconchegante, prático e bem localizado? Então, você precisa conhecer este apartamento que temos disponível para venda em Várzea Grande, do outro lado da ponte, próximo à Avenida Beira Rio em Cuiabá.\r\n\r\nCom uma área privativa de 50m², este apartamento conta com dois quartos aconchegantes e arejados, uma sala espaçosa, uma cozinha com móveis planejados e uma lavanderia que atende perfeitamente as suas necessidades. Além disso, o apartamento possui um banheiro bem iluminado e uma vaga de estacionamento que garante a segurança do seu veículo.\r\n\r\nMas não é só isso! Este apartamento está localizado em uma região privilegiada, próximo às faculdades UNIC e UNIVAG, sendo uma excelente opção para estudantes que buscam praticidade e conforto. Além disso, o local oferece uma ampla rede de serviços, com supermercados, farmácias, padarias, restaurantes e muito mais.\r\n\r\nEntão, não perca esta oportunidade! Este apartamento está pronto para morar e é perfeito para você que busca conforto, praticidade e uma ótima localização. Entre em contato conosco para mais informações e agende uma visita.\r\n\r\nContato para vendas: (65) 9 9633-5509', '137', '1', '2023-06-24 02:11:30', '2023-06-24 02:17:28'),
(3, '20230003', 'Apartamento de 100m² no porcelanato próximo a UFMT', '109', '16', 280000, 0, 0, '100', '3', '2', '1', NULL, '1', '1', '0', '0', '1', '1', '0', '0', 'Excelente apartamento, todo reformado, próximo a UFMT, atrás do cartório na av. fernando correia.', '98', '1', '2023-06-24 02:21:29', '2023-06-24 02:22:00'),
(4, '20230004', 'Apartamento na Região Central Condomínio Edifício Constance com 3 quartos sendo 1 suíte', '4', '16', 375000, 800, 817, '0', '3', '2', '1', NULL, '1', '1', '', '', '1', '1', '1', '', 'Venha conhecer este incrível apartamento à venda no Condomínio Edifício Constance, localizado no centro de Cuiabá! Com 3 quartos, sendo 1 suíte, este imóvel oferece todo o conforto e praticidade que você procura.\r\n\r\nSua localização privilegiada próximo à Av. Mato Grosso garante fácil acesso a todas as vias expressas e aos pontos mais importantes da capital. Você estará próximo de tudo o que precisa: comércios, serviços, lazer e muito mais.', '14', '1', '2023-06-25 12:15:46', '2023-06-25 12:15:46'),
(5, '20230005', 'Apartamento a Venda ao lado da Arena Pantanal Cidade Alta', '6', '16', 195000, 650, 0, '58', '2', '1', '1', NULL, '1', '1', '0', '0', '1', '1', '1', '1', 'Se você está em busca de um novo lar em Cuiabá, temos uma oportunidade incrível para você. Apresentamos um apartamento localizado no desejado bairro Cidade Alta, uma região privilegiada e próximo à famosa Arena Pantanal.', '128', '1', '2023-06-25 12:19:30', '2023-06-25 12:31:17'),
(6, '20230006', 'Área de Lazer Invejável e Próximo a Av. Miguel Sutil', '9', '16', 300000, 800, 0, '90', '3', '2', '1', NULL, '1', '1', '0', '0', '1', '1', '1', '1', 'Apartamento muito bem localizado, com área de lazer completa. Composto por 3 quartos, sala ampla, cozinha, banheiro social e uma suíte. Com um condomínio repleto de lazer, com piscina, churrasqueira e salão de festas. Agende sua visita (65) 99633-5509', '29', '1', '2023-06-26 09:53:54', '2023-06-26 09:54:23'),
(7, '20230007', 'Sol da Manhã com 4 Quartos 2 Vagas na Garagem', '38', '16', 495000, 490, 0, '101', '4', '2', '2', NULL, '1', '1', '0', '1', '1', '1', '1', '1', 'Vendo um excelente apartamento no bairro morada do ouro, no condomínio morada do parque. Sol da manhã, na melhor localização dentro do condomínio. Agende sua visita (65) 99633-5509', '31', '1', '2023-06-26 03:20:01', '2023-06-26 03:20:30'),
(8, '20230008', 'Vendo Apartamento Piso em Porcelanato com 2 Quartos', '25', '16', 285000, 450, 0, '75', '2', '2', '1', NULL, '1', '1', '0', '1', '1', '1', '0', '0', 'Apartamento a 5 minutos do parque mãe bonifácia, próximo a Miguel Sutil e a rodoviária. No porcelanato e todo com armários na cozinha e quarto. Agende sua visita: (65) 99633-5509', '31', '1', '2023-06-26 03:38:30', '2023-06-26 03:38:45'),
(9, '20230009', 'Apartamento no Residencial Paiaguas, frente ao Parque das Águas. ', '90', '17', 165000, 250, 0, '60', '2', '1', '1', NULL, '1', '1', '0', '0', '1', '1', '0', '0', 'Apartamento Quitado totalmente em dias - IPTU e CONDOMINIO\r\nAceita financiamento.\r\ntodas janelas no Blindex\r\nCom02 quartos\r\nSala\r\nCozinha \r\nBanheiro \r\nArea de servicos\r\nGaragem para 01 carro\r\nArea comum com Churasqueira\r\nCampo de futebol\r\nBicicletario\r\n', '21', '1', '2023-06-26 07:40:34', '2023-06-26 08:59:47'),
(10, '20230010', 'Vendo Apartamento Localizado ao lado do Parque das Águas', '90', '16', 135000, 350, 0, '47', '2', '1', '1', NULL, '1', '1', '', '', '1', '', '', '', 'Vendo apartamento com 2 quartos, no residencial paiaguás, ao lado do parque das águas. Agende sua visita (65) 99633-5509', '42', '1', '2023-06-27 09:05:52', '2023-06-27 09:05:52'),
(11, '20230011', 'Ótima Localização ao Lado do Parque das Águas', '90', '16', 140000, 350, 0, '47', '2', '1', '1', NULL, '1', '1', '0', '0', '1', '1', '0', '0', 'Apartamento ao lado do parque das águas, próximo ao shopping pantanal. Com 2 quartos, sala, cozinha, lavanderia, banheiro e 1 vaga na garagem. Agende sua visita: (65) 99633-5509', '68', '1', '2023-06-27 09:13:17', '2023-06-27 09:13:36'),
(12, '20230012', 'Vendo Apartamento em Condomínio Sossegado ao lado da Av. do CPA com 3 Quartos e 100m²', '1', '16', 290000, 700, 0, '100', '3', '2', '1', NULL, '1', '1', '0', '0', '1', '1', '1', '0', 'Localização espetacular, próximo a smart fit, ao lado da av. do cpa, com 3 quartos, 1 suíte, banheiro social, sala ampla, móveis planejados em todos os cômodos, em um condomíno calmo e sossegado.', '57', '1', '2023-06-28 08:49:12', '2023-06-28 08:50:21'),
(13, '20230013', 'Apartamento Porteira Fechada Próx. ao Parque das Águas', '90', '16', 150000, 350, 0, '47', '2', '1', '1', NULL, '1', '1', '0', '0', '1', '1', '0', '0', 'Apartamento porteira fechada, com 3 Condicionadores de AR, TV de 70\'\' na sala, sofá cama, janelas com blindex todos trocados, TV de 40\'\' no quarto, paineis na sala e um dos quartos, Geladeira INOX nova de duas portas, microondas, fogão cooktop, mesa para 4 cadeiras na sala.\r\nAgende sua visita: (65) 99633-5509', '57', '1', '2023-06-28 03:56:40', '2023-06-28 03:57:22'),
(14, '20230014', 'Apartamento na Região do Parque das Águas Com a Mobília', '90', '16', 150000, 350, 0, '47', '2', '1', '1', NULL, '1', '1', '0', '0', '1', '1', '0', '0', 'Apartamento 47m², 2° andar, sol da manhã, 2 quartos, 1 banheiro, Lavanderia e cozinha com móveis planejado cor branco  vermelho, Sala/Sala de Jantar conjugada, 2 ar condicionado de 9mil btus marca Consul, 1 geladeira Panasonic frost free 387 L\r\n1 maquina de lavar Consul 12kg e 1 pia.\r\nAgende sua visita (65) 99633-5509', '48', '1', '2023-06-28 05:51:43', '2023-06-28 05:51:58'),
(15, '20230015', 'Apartamento com 3 quartos sendo 1 suíte, próximo ao Parque Tia Nair', '68', '18', 150000, 380, 0, '72', '3', '2', '2', NULL, '1', '1', '0', '1', '1', '1', '1', '1', 'Oportunidade \r\n\r\nTorres Ville D’Itália \r\n\r\nÓtima localização na região do Parque Tia Nair e Supermercado Comper \r\nAv. Gov. Dante Martins de Oliveira \r\n\r\n6º andar  72m2\r\n\r\n✅3 quartos sendo 1 suíte \r\n✅Planejados na cozinha \r\n✅2 vagas de garagem no subsolo \r\n✅Segurança e lazer completo \r\n✅Apartamento totalmente novo \r\n\r\nInvestimento: \r\nÁgio: 150.000,00\r\nParcelas de 2.567,88 (Decrescente)\r\nOu  400.000,00\r\nAceita financiamento\r\n\r\nWhatsapp 65 996477045\r\nCleberson Vieira\r\nCRECI 15238', '70', '1', '2023-06-29 10:29:48', '2023-06-29 10:31:13'),
(16, '20230016', 'Próximo ao Atacadão, a 10 Minutos do Shopping Pantanal e Parque das Águas', '1', '16', 260000, 420, 0, '72', '3', '1', '1', NULL, '1', '1', '1', '0', '1', '1', '0', '1', 'Vendo Apartamento no Condomínio Residencial Lisboa - Parque das Nações. Apartamento em ótima localização no Bairro Parque das Nações (próximo ao Atacadão, a 10 Minutos do Shopping Pantanal, Parque das Águas e Centro Político).\r\nAgende sua visita (65) 99633-5509\r\n', '66', '1', '2023-06-29 11:41:11', '2023-06-29 11:41:27'),
(17, '20230017', 'Apartamento 3 Quartos e 3 Banheiros na Av. Fernando Correa', '93', '16', 285000, 530, 825, '92', '3', '3', '1', NULL, '1', '1', '0', '1', '1', '1', '1', '1', 'Ótimo apartamento localizado Próximo a Av. Fernando Correa, próximo ao centro, supermercados, shoppings, escolas, faculdades. Prédio conta com uma área de lazer enorme.', '62', '1', '2023-07-04 03:54:05', '2023-07-04 03:58:30'),
(18, '20230018', 'Apartamento a Venda Reformado Pronto para Morar', '8', '16', 200000, 220, 0, '70', '2', '1', '1', NULL, '1', '1', '0', '0', '1', '1', '0', '0', 'Apartamento a venda próximo ao shopping estação, todo reformado, pronto para morar com 70m² no Coophamil. Sala com espelho e pré-instalação de ar condicionado, cozinha com armários / área de serviço, quarto de casal grande, quarto de solteiro. Agende sua visita: (65) 99633-5509', '37', '1', '2023-07-05 11:49:14', '2023-07-05 11:49:29'),
(19, '20230019', 'Espaçoso Apartamento de 4 Quartos com Sacada Ampla - Imperdível!', '9', '16', 490000, 960, 0, '110', '4', '2', '2', NULL, '1', '1', '0', '1', '1', '1', '1', '1', 'Excelente oportunidade! Este espaçoso apartamento de 4 quartos, sendo 1 suíte, localizado no Edifício Coral Gables, no bairro Consil, em Cuiabá, possui 110m², sacada ampla e está situado no 12º andar, proporcionando uma vista privilegiada. Além disso, conta com 2 garagens cobertas, condomínio no valor de R$960 e está em uma localização estratégica, a apenas uma quadra do Supermercado Comper da Av. Miguel Sutil, próximo da Todimo Home Center e da Av. do CPA. Com armários na cozinha e no quarto, área de serviço, churrasqueira, piscina, quarto de serviço e varanda, este apartamento é perfeito para quem busca conforto, comodidade e qualidade de vida. Não perca essa oportunidade e agende sua visita agora mesmo! (65) 99633-5509', '133', '1', '2023-07-06 03:22:42', '2023-07-06 03:25:22'),
(20, '20230020', 'Apartamento 2 quartos proximo ao shopping estacao ', '15', '20', 280000, 240, 0, '54', '2', '1', '1', NULL, '', '', '', '1', '1', '', '', '1', 'lancamento enquadrado no minha casa minha vida aproveite a excelente taxa....\r\n\r\nApartamento de 2 quartos\r\nlocalizado estrategicamente atras do hospital santa rosa. Bairro seguro e centralizado proximo a super mercado, shopping, posto de combustivel, parque mae bonifacia e muito mais.\r\nentrada de 20% dividida em ate 60x', '30', '1', '2023-07-06 04:56:26', '2023-07-06 04:56:26'),
(21, '20230021', 'Apartamento na Área Central de Cuiabá Próx. a Av. Mato Grosso', '56', '16', 400000, 749, 0, '91', '3', '2', '1', NULL, '1', '1', '0', '1', '1', '1', '1', '1', 'Localizado próximo ao hospital ortopédico, região central de Cuiabá, com fácil acecsso as principais avenidas da cidade. São 3 quartos, sendo um suíte, sala , cozinha, área de serviço. Total de 91 m² de área útil. Agende sua visita: (65) 99633-5509', '123', '1', '2023-07-07 05:13:30', '2023-07-07 05:13:47'),
(22, '20230022', 'Apartamento com 3 Quartos 2 Vagas de Garagem Todo Reformado', '77', '16', 305000, 650, 905, '69', '3', '2', '2', '3', '1', '1', '0', '1', '1', '1', '1', '1', 'Apartamento com 3 quartos, sendo uma suíte, armários no banheiro e cozinha.\r\n✅ 2 Vagas de garagem\r\n✅ Armários planejados na suíte\r\n✅ Sol da tarde/Sacada com tolto\r\n✅ Ventilador de teto em todos os quartos\r\n✅ Apato todo reformado\r\n\r\nCom um condomínio com playground, salão de festas climatizado, churrasqueira e piscina.', '122', '1', '2023-07-12 06:22:02', '2023-07-12 06:24:20'),
(23, '20230023', 'APARTAMENTO CHAPADA DIAMANTINA', '69', '17', 150000, 300, 0, '40', '2', '1', '1', '2', '1', '1', '', '', '1', '', '', '1', 'Apartamento com móveis planejado na cozinha e em um quarto.\r\nApartamento encontra-se Quitado.\r\nPara mais informações (65) 99811-1313', '32', '1', '2023-08-14 10:04:24', '2023-08-14 10:04:24'),
(24, '20230024', 'Apartamento de Frente para a Arena Pantanal no Ilhas do Sul 1', '6', '16', 300000, 750, 970, '84', '3', '2', '1', '5', '1', '1', '0', '0', '1', '1', '1', '1', 'VENDO OU TROCO: Apartamento no Condomínio Ilhas do Sul 1 em Frente a Arena Pantanal, com 84m². \r\n\r\n5º andar, Sol da manha, de frente para Arena Pantanal, Cidade Alta Cuiabá. Todo reformado 3 Quartos, sala para 2 ambientes, 2 banheiros, 1 Lavabo, cozinha e uma dispensa. \r\n\r\n- Planejados \r\nFicam no Imóvel todos os moveis planejados, 1 Ar-condicionado.\r\nPossui 1 vaga de garagem coberta.\r\n\r\n- Lazer\r\nChurrasqueira, piscina, \r\nSalão de festa todo reformado e mobilhado\r\nQuadra de esporte.                        \r\n\r\nQuitado. \r\nAceita financiamento. \r\nAnaliso troca por veículos.', '18', '1', '2023-08-16 03:45:12', '2023-08-16 03:45:30'),
(25, '20230025', 'Apartamento abaixo do preço de mercado no Garden Ville', '72', '16', 660000, 1000, 2500, '117', '3', '2', '2', '0', '1', '1', '0', '1', '1', '1', '1', '1', '✅Apartamento a VENDA no Garden Ville\r\n\r\n✅Proximo ao shopping Pantanal, avenida do CPA e Centro Político.\r\n\r\n✅Andar baixo, sol da tarde\r\n✅02 vagas tipo gaveta \r\n✅03 quartos sendo uma suíte com closet (armários nos quartos, tela de proteção)\r\n✅Banheiro social \r\n✅Sala para 02 ambientes \r\n✅Cozinha com planejados porta de acesso para colaborar(a)\r\n✅Lavanderia \r\n✅Banheiro serviço \r\n✅Sacada ampla\r\n✅Ar condicionado em todos os quartos\r\n✅117m²\r\n\r\n✅Valor do Imóvel : R$660.000,00\r\n✅IPTU Aproximadamente R$2.500 anual\r\n✅Condomínio R$1.000,00\r\n\r\n(65) 99633-5509\r\n', '80', '1', '2023-08-28 06:19:48', '2023-08-28 06:21:01'),
(26, '20230026', 'Apartamento Térreo no Condonímio 8 de Abril', '24', '16', 195000, 0, 0, '58', '3', '1', '1', '0', '1', '1', '0', '0', '0', '0', '0', '0', 'Apartamento térreo no condomínio 8 de abril\r\nCom 3/4, sala, cozinha e banheiro.\r\nTratar com (65) 99633-5509 João Corretor', '17', '1', '2023-08-29 04:31:20', '2023-08-29 04:31:39'),
(27, '20230027', 'Ao lado do Shopping Pantanal com 161m²', '72', '16', 950000, 1370, 2800, '161', '3', '0', '4', '0', '1', '1', '0', '1', '1', '1', '1', '1', 'Apresentamos um encantador apartamento de médio padrão, com uma localização estratégica ao lado do Shopping Pantanal em Cuiabá-MT.\r\n\r\nCom 161m² de espaço bem distribuído, este imóvel oferece comodidades que atendem às necessidades modernas, incluindo academia, área de serviço, armários na cozinha e no quarto, churrasqueira, além de uma relaxante piscina.\r\n\r\nA varanda convida a momentos de contemplação, enquanto a proximidade do shopping e as facilidades como elevador, segurança 24h e salão de festas tornam este apartamento uma escolha prática e confortável para quem busca um estilo de vida conveniente.', '103', '1', '2023-08-30 09:12:47', '2023-08-30 09:14:24'),
(28, '20230028', 'MRV Chapada dos Guimarães ', '24', '16', 190000, 440, 600, '44', '2', '1', '1', '2', '1', '1', '0', '0', '0', '0', '0', '1', 'Vendo, apto reformado com porcelanato, o condomínio é excelente, muito organizado, garagem coberta, próximo de tudo; a 200metros do atacadão do Porto. Whatsapp (65) 99633-5509\r\n150mil + 39mil para quitar', '114', '1', '2023-09-01 11:28:47', '2023-09-01 11:29:04'),
(29, '20230029', 'Apartamento MRV Novo no Condomínio Chapada Raviera 6º Andar Sol da Manhã', '60', '16', 230000, 400, 0, '39,78', '2', '1', '1', '0', '1', '1', '0', '1', '1', '1', '1', '1', 'Apartamento lançamento, entregue neste mês de setembro. Novo e pronto para morar.\r\nLocalizado próximo a Av. Beira Rio, no bairro Bela Marina.\r\n6º Andar, Sol da Manhã.\r\nWhatsapp (65) 99633-5509', '21', '1', '2023-09-14 09:20:34', '2023-09-14 09:31:17'),
(30, '20230030', 'Mobiliado ao lado do parque das águas', '90', '16', 130000, 320, 0, '46,85', '2', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', 'Excelente oportunidade para quem deseja comprar um apartamento bem localizado, mobiliado e com o preço ajustado.\r\n\r\n-Dois quartos com: cama, guarda-roupas, ventilador e ar-condicionado;\r\n-Sala com: cortina, ventilador, jogo de sofá, estante/painel para TV e mesa de vidro com 4 cadeiras;\r\n-Cozinha com: vários armários, geladeira, fogão e microondas;\r\n-Lavanderia com: máquina de lavar, armário e tanque com armário;\r\nBanheiro com: armário espelho, chuveiro e box;\r\n-Uma vaga de garagem.\r\n** 1 lance de escada apenas **', '14', '1', '2023-09-14 08:26:23', '2023-09-14 08:26:46'),
(31, '20230031', 'Vendo Apartamento com Ágio de 160mil ao lado da Area Pantanal', '6', '16', 160000, 600, 0, '80', '3', '2', '1', '0', '1', '1', '0', '0', '1', '1', '1', '1', 'Apartamento totalmente Reformado Último Andar!\r\n\r\nLocalização: Ao lado da Arena Pantanal\r\n\r\n-Apartamento com 3 quartos e 2 salas totalmente reformado.\r\n-Armários planejados em todos os quartos e Cozinha.\r\n-Piso vinilico em todo apartamento.\r\n-Sanca em gesso nas salas.\r\n-Ar condicionado em todos os quartos incluso.\r\n-Vaga de garagem coberta.\r\n-Area de lazer completa com piscina e salão de festas.\r\n\r\nExcelente localização!\r\n\r\nVALOR ÁGIO: 160 MIL\r\nContato: (65) 99633-5509', '12', '1', '2023-09-15 09:49:14', '2023-09-15 09:49:34'),
(32, '20230032', 'Apartamento na Comandante Costa no Bairro Centro Sul', '5', '16', 380000, 850, 1200, '77,02', '3', '2', '2', '6', '1', '1', '0', '1', '1', '1', '1', '1', 'Descrição do Imóvel:\r\nDescubra a Perfeição na Rua Comandante Costa, no Centro Sul de Cuiabá!\r\n\r\nVocê está pronto para dar um salto em direção ao seu sonho de viver em um lugar incrível? Este apartamento é a resposta para todos os seus desejos! Localizado na desejada Rua Comandante Costa, no coração do bairro Centro Sul de Cuiabá, este imóvel é a combinação perfeita de localização conveniente e espaço elegante.\r\n\r\nEspaço e Conforto\r\nCom 77,02m² bem distribuídos, este apartamento oferece espaço de sobra para a sua família desfrutar. Imagine relaxar na sala ampla, desfrutando do sol da manhã que ilumina todo o ambiente. São 3 quartos, incluindo uma suíte, para atender às necessidades da sua família. E não se preocupe com espaço de armazenamento – este apartamento já conta com armários de cozinha, armário no banheiro e guarda-roupas em 2 quartos!\r\n\r\nComodidades do Condomínio\r\nAlém de um apartamento perfeito, o condomínio oferece uma série de comodidades que tornarão sua vida mais fácil e divertida. Elevador para o seu conforto, playground para as crianças, piscina para momentos relaxantes, academia para se manter em forma, e uma churrasqueira para celebrar com amigos e familiares. A portaria eletrônica e o porteiro 24 horas garantem sua segurança e tranquilidade.\r\n\r\nLocalização Imbatível\r\nEste apartamento está cercado por conveniências que tornarão sua vida mais prática. Supermercados, escolas, farmácias, restaurantes, padarias, hospitais, clínicas e até mesmo um Banco do Brasil a uma curta distância. Se você tem um animal de estimação, encontrará um pet shop nas proximidades para cuidar do seu companheiro de quatro patas.\r\n\r\nA oportunidade de visitar este lugar incrível está bem diante de você. Agende agora a sua visita para descobrir todos os detalhes pessoalmente. Não perca a chance de fazer deste apartamento a sua casa dos sonhos!\r\n\r\nLigue agora para (65) 99633-5509 e marque sua visita!\r\n\r\nEste é o momento de tornar seus sonhos realidade. Venha conhecer o apartamento na Rua Comandante Costa e imagine a vida que você poderá viver aqui. Sua jornada para o conforto e conveniência começa agora!', '20', '1', '2023-09-19 04:32:08', '2023-09-19 04:32:36'),
(33, '20230033', 'Apartamento com 3 Quartos e 2 Vagas na Garagem Proximo a Avenida Beira Rio', '74', '16', 330000, 485, 1100, '80', '3', '2', '2', '2', '1', '1', '0', '1', '1', '1', '1', '1', 'Descubra a sofisticação e praticidade neste apartamento de 80m² no tranquilo bairro Jardim Califórnia. Com três quartos, armários planejados, ar condicionado, blindex nos banheiros, e uma lavanderia funcional, este espaço é projetado para oferecer conforto e conveniência. As duas vagas de garagem, o elevador no condomínio, e a localização estratégica são aspectos que elevam ainda mais o valor desse imóvel. Com um condomínio acessível de R$ 485,00 e IPTU de R$ 1.200 anuais, esta é uma oportunidade única para adquirir uma residência que combina elegância com uma estrutura sólida. Agende sua visita e descubra um novo padrão de moradia.\r\n\r\nContato (65) 99633-5509', '29', '1', '2023-09-28 07:29:22', '2023-09-28 07:30:03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `valor` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `quartos` varchar(255) NOT NULL,
  `data` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `leads`
--

INSERT INTO `leads` (`id`, `nome`, `whatsapp`, `url`, `valor`, `bairro`, `quartos`, `data`) VALUES
(15, 'João Victor', '(65) 99633-5509', '/home/u258163094/domains/apartamentoavendacuiaba.com.br/public_html/Apartamento-3-quartos-20230001 ', '200000 ', 'Areão ', '1', '2023-06-23 19:32:44'),
(16, 'João Victor', '(65) 99633-5509', '/home/u258163094/domains/apartamentoavendacuiaba.com.br/public_html/Apartamento-3-quartos-20230001 ', '200000 ', 'Areão ', '1', '2023-06-23 19:33:03'),
(17, 'João Victor', '(65) 99633-5509', '/Apartamento-3-quartos-20230001 ', '200000 ', 'Areão ', '1', '2023-06-23 19:43:37'),
(18, 'João Victor', '(65) 99633-5509', '/Apartamento-3-quartos-20230001 ', '200000 ', 'Areão ', '1', '2023-06-23 19:44:15'),
(19, 'João Victor', '(65) 99633-5509', '/Apartamento-3-quartos-20230001 ', '200000 ', 'Areão ', '1', '2023-06-23 19:45:25'),
(20, 'João Victor', '(65) 99633-5509', '/Apartamento-3-quartos-20230001 ', '200000 ', 'Areão ', '1', '2023-06-23 19:49:49'),
(21, 'João Victor', '(65) 99633-5509', '/Apartamento-3-quartos-20230001 ', '200000 ', 'Areão ', '1', '2023-06-23 19:50:23'),
(22, 'Joao', '(65) 99633-5509', '/Apartamento-3-quartos-20230001 ', '200000 ', 'Areão ', '1', '2023-06-23 20:26:51'),
(23, 'Joao', '(65) 99633-5509', '//Apartamento-3-quartos-20230001 ', '200000 ', 'Areão ', '1', '2023-06-23 20:28:43'),
(24, 'Joao', '(65) 99633-5509', '/Apartamento-3-quartos-20230001 ', '200000 ', 'Areão ', '1', '2023-06-23 20:29:31'),
(25, 'João Victor', '(65) 99633-5509', '/Apartamento-na-Planta-Proximo-a-Av--Beira-Rio-em-Cuiaba-20230001 ', '237300 ', 'Bela Marina ', '2', '2023-06-23 21:24:14'),
(26, 'João Victor', '(65) 99633-5509', '/Apartamento-de-100m---no-porcelanato-proximo-a-UFMT-20230003 ', '280000 ', 'Coophema ', '3', '2023-06-24 15:04:39'),
(27, 'Joao', '(65) 99633-5509', '/Apartamento-de-100m---no-porcelanato-proximo-a-UFMT-20230003 ', '280000 ', 'Coophema ', '3', '2023-06-24 15:07:09'),
(28, 'João Victor', '(65) 99633-5509', '/Apartamento-a-Venda-ao-lado-da-Arena-Pantanal-Cidade-Alta-20230005 ', '195000 ', 'Cidade Alta ', '2', '2023-06-25 12:31:38'),
(29, 'João Victor', '(65) 99633-5509', '/Area-de-Lazer-Invejavel-e-Proximo-a-Av--Miguel-Sutil-20230006 ', '300000 ', 'Consil ', '3', '2023-06-26 09:55:53'),
(30, 'João Victor Vieira', '(65) 99633-5509', '/Sol-da-Manha-com-4-Quartos-2-Vagas-na-Garagem-20230007 ', '495000 ', 'Morada do Ouro ', '4', '2023-06-26 15:21:10'),
(31, 'João Victor', '(65) 99633-5509', '/Sol-da-Manha-com-4-Quartos-2-Vagas-na-Garagem-20230007 ', '495000 ', 'Morada do Ouro ', '4', '2023-06-26 15:21:52'),
(32, 'nikolee', '(65) 99811-1313', '/Apartamento-no-Residencial-Paiaguas--frente-ao-Parque-das-Aguas---20230009 ', '165000 ', 'Paiaguás ', '2', '2023-06-26 21:01:24'),
(33, 'Bhjj', '(65) 99619-5471', '/Vendo-Apartamento-em-Condominio-Sossegado-ao-lado-da-Av--do-CPA-com-3-Quartos-e-100m---20230012 ', '290000 ', 'Alvorada ', '3', '2023-06-28 12:34:40'),
(34, '1233', '(65) 99999-9999', '/Proximo-ao-Atacadao--a-10-Minutos-do-Shopping-Pantanal-e-Parque-das-Aguas-20230016 ', '260000 ', 'Alvorada ', '3', '2023-06-29 14:18:32'),
(35, 'Ana Paula', '(65) 99602-1385', '/Apartamento-com-3-quartos-sendo-1-suite--proximo-ao-Parque-Tia-Nair-20230015 ', '150000 ', 'Carumbé ', '3', '2023-07-10 20:04:59'),
(36, 'Thiago ', '(32) 99142-3727', '/Apartamento-a-Venda-Reformado-Pronto-para-Morar-20230018 ', '200000 ', 'Coophamil ', '2', '2023-07-14 10:42:43'),
(37, 'Alciny', '(65) 99811-1313', '/Apartamento-Porteira-Fechada-Prox--ao-Parque-das-Aguas-20230013 ', '150000 ', 'Paiaguás ', '2', '2023-07-17 08:34:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--

CREATE TABLE `perfil` (
  `id` int(11) NOT NULL,
  `nome_user` varchar(255) NOT NULL,
  `imob_autonomo` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `descricao_user` varchar(255) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `ig` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `creci` varchar(255) NOT NULL,
  `access_type` varchar(255) NOT NULL DEFAULT 'user',
  `payment` varchar(255) NOT NULL DEFAULT 'free'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `perfil`
--

INSERT INTO `perfil` (`id`, `nome_user`, `imob_autonomo`, `whatsapp`, `email`, `password`, `img`, `descricao_user`, `fb`, `ig`, `linkedin`, `site`, `creci`, `access_type`, `payment`) VALUES
(16, 'João Victor Vieira', '2', '(65) 99633-5509', 'joaovictor@imobiliatto.com.br', 'Joao1@2@', 'users/eb3f1350088f87636a74ede4a577ff21/perfil.jpg', 'Corretor e Avaliador de Imóveis, atuante em Cuiabá-MT, prezo pela honestidade e transparência nas negociações.', 'https://www.facebook.com/joaocorretorimobiliariomt/', 'https://www.instagram.com/joaocorretorimobiliario/', '', 'https://www.imobiliatto.com.br', 'CRECI-MT 12130 F', 'user', 'premium'),
(17, 'ALCINY ANUNCIAÇÃO', '2', '(65) 99811-1313', 'kero1ape@gmail.com', 'mariaeloa1313', 'users/5c6749724816a694445f490036327eaa/perfil.jpg', 'O corretor Alciny Anunciação do KERO1APE é um profissional altamente qualificado e experiente no ramo imobiliário. Com um profundo conhecimento do mercado e das tendências, ele está preparado para ajudar os clientes a encontrar o imóvel perfeito. Com um e', '', '@kero1ape', '', '', 'CRECI - MT  11089', 'user', 'premium'),
(18, 'Cleberson Silvano Vieira', 'Proprietário ou Corretor', '(65) 99647-7045', 'clebersonvieiracorretor@gmail.com', '010203vieira', '', '', '', '', '', 'www.greenhousemt.com.br', '15238', 'user', 'premium'),
(19, 'Carlos Heinz Klein ', '2', '(65) 99679-4344', 'Carlosimoveismt@hotmail.com', 'fordtaurus631248', '', 'Confiança  agilidade  e transparência ', 'CHKIMOVEIS ', 'CHKIMOVEIS ', '', '', '4736 MT ', 'user', 'free'),
(20, 'Leandro goncalves', 'Proprietário ou Corretor', '(65) 99281-0910', 'vivart.imob@gmail.com', 'lg8447', 'users/44fb085b99f1709566f46eb9c14b0bbd/perfil.jpg', '', '', 'leandrogoncalvescorretor', '', 'vivartimobiliaria.com.br', '9454', 'user', 'free');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bairros`
--
ALTER TABLE `bairros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `faixavalor`
--
ALTER TABLE `faixavalor`
  ADD PRIMARY KEY (`id_valor`);

--
-- Índices para tabela `imagem`
--
ALTER TABLE `imagem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `imovel`
--
ALTER TABLE `imovel`
  ADD PRIMARY KEY (`id_imovel`);

--
-- Índices para tabela `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bairros`
--
ALTER TABLE `bairros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de tabela `faixavalor`
--
ALTER TABLE `faixavalor`
  MODIFY `id_valor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `imagem`
--
ALTER TABLE `imagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1150;

--
-- AUTO_INCREMENT de tabela `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

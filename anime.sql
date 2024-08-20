-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2024 a las 03:00:52
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `anime`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `NOMBRE_CATEGORIA` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DESCRIPCION_CATEGORIA` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `data_rel` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `TIPO_CATEGORIA` varchar(255) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`ID_CATEGORIA`, `NOMBRE_CATEGORIA`, `DESCRIPCION_CATEGORIA`, `data_rel`, `TIPO_CATEGORIA`) VALUES
(1, 'Todos', 'Todos', 'all', 'success'),
(2, 'Audífonos', 'Audífonos', '1', 'danger'),
(3, 'Manos Libre', 'Manos Libre', '2', 'surprise'),
(4, 'Cargador Inalámbricos', 'Cargador Inalámbricos', '3', 'warning'),
(5, 'Parlantes', 'Parlantes', '4', 'primary');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `ID_USER` int(11) NOT NULL,
  `ID_PRODUCTO` int(11) DEFAULT NULL,
  `ID_COMPRA` int(11) NOT NULL,
  `DETALLE_COMPRA` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DESCRIPCION_COMPRA` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `USUARIO_COMPRA` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PRODUCTO_COMPRA` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `ID_PRODUCTO` int(11) NOT NULL,
  `ID_IMAGEN` int(11) NOT NULL,
  `NOMBRE_IMAGEN` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `TITULO_IMAGEN` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`ID_PRODUCTO`, `ID_IMAGEN`, `NOMBRE_IMAGEN`, `TITULO_IMAGEN`) VALUES
(1, 1, 'pikachu_gorra_y1.png', 'Pikachu Gorra Mega Charizard Y'),
(1, 2, 'pikachu_gorra_y2.png', 'Pikachu Gorra Mega Charizard Y'),
(1, 3, 'pikachu_gorra_y3.png', 'Pikachu Gorra Mega Charizard Y'),
(2, 5, 'pikachu_gorra_x1.png', 'Pikachu Gorra Mega Charizard Y'),
(2, 6, 'pikachu_gorra_x2.png', 'Pikachu Gorra Mega Charizard Y'),
(2, 7, 'pikachu_gorra_x3.png', 'Pikachu Gorra Mega Charizard Y'),
(3, 9, 'pikachu_rayquaza1.png', 'Rayquaza'),
(3, 10, 'pikachu_rayquaza2.png', 'Rayquaza'),
(3, 11, 'pikachu_rayquaza3.png', 'Rayquaza'),
(4, 13, 'pikachu_rayquaza_shiny1.png', 'Rayquaza Shiny'),
(4, 14, 'pikachu_rayquaza_shiny2.png', 'Rayquaza Shiny'),
(4, 15, 'pikachu_rayquaza_shiny3.png', 'Rayquaza Shiny'),
(5, 17, 'mega_charizard_y1.png', 'Mega Charizard Y'),
(5, 18, 'mega_charizard_y2.png', 'Mega Charizard Y'),
(5, 19, 'mega_charizard_y3.png', 'Mega Charizard Y'),
(6, 21, 'mega_charizard_x1.png', 'Mega Charizard X'),
(6, 22, 'mega_charizard_x2.png', 'Mega Charizard X'),
(6, 23, 'mega_charizard_x3.png', 'Mega Charizard X'),
(7, 25, 'rayquaza_charizard1.png', 'Fusion Rayquaza Charizard'),
(7, 26, 'rayquaza_charizard2.png', 'Fusion Rayquaza Charizard'),
(7, 27, 'rayquaza_charizard3.png', 'Fusion Rayquaza Charizard'),
(8, 29, 'vulpix_alola1.png', 'Vulpix de Alola es un Pokémon de tipo Hielo. Adoptó esta forma tras migrar a las montañas nevadas de la región Alola para evitar invadir el hábitat natural de otros Pokémon'),
(8, 30, 'vulpix_alola2.png', 'Vulpix de Alola es un Pokémon de tipo Hielo. Adoptó esta forma tras migrar a las montañas nevadas de la región Alola para evitar invadir el hábitat natural de otros Pokémon'),
(8, 31, 'vulpix_alola3.png', 'Vulpix de Alola es un Pokémon de tipo Hielo. Adoptó esta forma tras migrar a las montañas nevadas de la región Alola para evitar invadir el hábitat natural de otros Pokémon'),
(9, 33, 'mega_kyogre1.png', 'Mega Kyogre'),
(9, 34, 'mega_kyogre2.png', 'Mega Kyogre'),
(9, 35, 'mega_kyogre3.png', 'Mega Kyogre'),
(10, 37, 'mega_hoondoom1.png', 'Mega Houndoom'),
(10, 38, 'mega_hoondoom2.png', 'Mega Houndoom'),
(10, 39, 'mega_hoondoom3.png', 'Mega Houndoom'),
(11, 41, 'snorlax1.png', 'Snorlax'),
(11, 42, 'snorlax2.png', 'Snorlax'),
(11, 43, 'snorlax3.png', 'Snorlax'),
(12, 45, 'lapras1.png', 'Lapras'),
(12, 46, 'lapras2.png', 'Lapras'),
(12, 47, 'lapras3.png', 'Lapras'),
(13, 49, 'eevee1.png', 'Eevee'),
(13, 50, 'eevee2.png', 'Eevee'),
(13, 51, 'eevee3.png', 'Eevee'),
(14, 53, 'jolteon1.png', 'Jolteon'),
(14, 54, 'jolteon2.png', 'Jolteon'),
(14, 55, 'jolteon3.png', 'Jolteon'),
(15, 57, 'vaporeon1.png', 'Vaporeon'),
(15, 58, 'vaporeon2.png', 'Vaporeon'),
(15, 59, 'vaporeon3.png', 'Vaporeon'),
(16, 61, 'flareon1.png', 'Flareon'),
(16, 62, 'flareon2.png', 'Flareon'),
(16, 63, 'flareon3.png', 'Flareon'),
(17, 65, 'espeon1.png', 'Espeon'),
(17, 66, 'espeon2.png', 'Espeon'),
(17, 67, 'espeon3.png', 'Espeon'),
(18, 69, 'umbreon1.png', 'Umbreon'),
(18, 70, 'umbreon2.png', 'Umbreon'),
(18, 71, 'umbreon3.png', 'Umbreon'),
(19, 73, 'leafeon1.png', 'Leafeon'),
(19, 75, 'leafeon3.png', 'Leafeon'),
(20, 77, 'glaceon1.png', 'Glaceon'),
(20, 78, 'glaceon2.png', 'Glaceon'),
(20, 79, 'glaceon3.png', 'Glaceon'),
(21, 81, 'sylveon1.png', 'Sylveon'),
(21, 82, 'sylveon2.png', 'Sylveon'),
(21, 83, 'sylveon3.png', 'Sylveon'),
(22, 85, 'mini_eevee1.png', 'Mini Eevee y sus Evoluciones'),
(22, 86, 'mini_eevee2.png', 'Mini Eevee y sus Evoluciones'),
(22, 87, 'mini_eevee3.png', 'Mini Eevee y sus Evoluciones'),
(23, 89, 'eevee_evoluciones1.jpg', 'Eevee y sus Evoluciones'),
(23, 90, 'eevee_evoluciones2.jpg', 'Eevee y sus Evoluciones'),
(23, 91, 'eevee_evoluciones3.jpg', 'Eevee y sus Evoluciones'),
(24, 93, 'shenlong1.jpg', 'Shenlong + Esferas del Dragon'),
(24, 94, 'shenlong2.png', 'Shenlong + Esferas del Dragon'),
(24, 95, 'shenlong3.png', 'Shenlong + Esferas del Dragon'),
(25, 97, '18_dbz1.png', 'Set 18 Figuras'),
(25, 98, '18_dbz2.png', 'Set 18 Figuras'),
(25, 99, '18_dbz3.png', 'Set 18 Figuras'),
(26, 101, '16_dbz1.png', 'Set 16 Figuras'),
(26, 102, '16_dbz2.png', 'Set 16 Figuras'),
(26, 103, '16_dbz3.png', 'Set 16 Figuras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `ID_PERFIL` int(11) NOT NULL,
  `NOMBRE_PERFIL` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `DESCRIPCION_PERFIL` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_PRODUCTO` int(11) NOT NULL,
  `ID_CATEGORIA` int(11) DEFAULT NULL,
  `NOMBRE_PRODUCTO` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `VALOR_PRODUCTO` int(11) DEFAULT NULL,
  `STOCK_PRODUCTO` int(11) DEFAULT NULL,
  `CARACTERISTICA_PRODUCTO` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `MEDIDA_PRODUCTO` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `DESTACADO_PRODUCTO` tinyint(1) NOT NULL,
  `DESCRIPCION_PRODUCTO` varchar(255) COLLATE latin1_spanish_ci NOT NULL,
  `ESTADO_PRODUCTO` varchar(10) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_PRODUCTO`, `ID_CATEGORIA`, `NOMBRE_PRODUCTO`, `VALOR_PRODUCTO`, `STOCK_PRODUCTO`, `CARACTERISTICA_PRODUCTO`, `MEDIDA_PRODUCTO`, `DESTACADO_PRODUCTO`, `DESCRIPCION_PRODUCTO`, `ESTADO_PRODUCTO`) VALUES
(1, 4, 'Pikachu Gorra Mega Charizard Y', 8500, 99, 'Felpa', '23 cm', 1, '', 'Nuevo'),
(2, 4, 'Pikachu Gorra Mega Charizard X', 12500, 99, 'Felpa', '23 cm', 0, '', 'Nuevo'),
(3, 4, 'Pikachu Gorra Rayquaza', 12500, 99, 'Felpa', '20 cm', 0, '', 'Nuevo'),
(4, 4, 'Pikachu Gorra Rayquaza Shiny', 12500, 99, 'Felpa', '20 cm', 0, '', 'Nuevo'),
(5, 1, 'Mega Charizard Y', 13000, 99, 'Felpa', '25 cm', 0, '', 'Nuevo'),
(6, 1, 'Mega Charizard X', 13000, 99, 'Felpa', '25 cm', 1, '', 'Nuevo'),
(7, 1, 'Fusion: Charizard / Rayquaza', 18000, 99, 'Felpa', '25 cm', 1, '', 'Nuevo'),
(8, 1, 'Vulpix Alola', 15000, 99, 'Felpa', '20 cm', 1, 'Vulpix de Alola es un Pokémon de tipo Hielo. Adoptó esta forma tras migrar a las montañas nevadas de la región Alola para evitar invadir el hábitat natural de otros Pokémon', 'Nuevo'),
(9, 1, 'Mega Kyogre', 25000, 99, 'Felpa', '30 cm', 1, '', 'Nuevo'),
(10, 1, 'Mega Houndoom', 25000, 99, 'Felpa', '30 cm', 1, '', 'Nuevo'),
(11, 1, 'Snorlax', 18000, 99, 'Felpa', '30 cm', 0, '', 'Nuevo'),
(12, 1, 'Lapras', 25000, 99, 'Felpa', '30 cm', 0, '', 'Nuevo'),
(13, 5, 'Eevee', 16500, 99, 'Felpa', '30 cm', 0, '', 'Nuevo'),
(14, 5, 'Jolteon', 16500, 99, 'Felpa', '30 cm', 0, '', 'Nuevo'),
(15, 5, 'Vaporeon', 16500, 99, 'Felpa', '30 cm', 0, '', 'Nuevo'),
(16, 5, 'Flareon', 16500, 99, 'Felpa', '30 cm', 0, '', 'Nuevo'),
(17, 5, 'Espeon', 16500, 99, 'Felpa', '30 cm', 0, '', 'Nuevo'),
(18, 5, 'Umbreon', 16500, 99, 'Felpa', '30 cm', 0, '', 'Nuevo'),
(19, 5, 'Leafeon', 16500, 99, 'Felpa', '30 cm', 0, '', 'Nuevo'),
(20, 5, 'Glaceon', 16500, 99, 'Felpa', '30 cm', 0, '', 'Nuevo'),
(21, 5, 'Sylveon', 16500, 99, 'Felpa', '30 cm', 0, '', 'Nuevo'),
(22, 5, 'Mini Eevee y sus Evoluciones', 30000, 99, 'Felpa / se', '12 cm', 0, '', 'Nuevo'),
(23, 5, 'Eevee y sus Evoluciones', 65000, 99, 'Felpa / se', '16 cm', 0, '', 'Nuevo'),
(24, 3, 'Shenlong + Esferas del Dragon', 30000, 99, 'Incluye: s', '30 cm', 0, '', 'Nuevo'),
(25, 3, 'Set 18 Figuras Dragon Ball', 25000, 99, 'Incluye: s', '7 a 8 cm', 0, '', 'Nuevo'),
(26, 3, 'Set 16 Figuras Dragon Ball', 25000, 99, 'Incluye: s', '7 a 8 cm', 0, '', 'Nuevo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `ID_USER` int(11) NOT NULL,
  `ID_PERFIL` int(11) DEFAULT NULL,
  `NOMBRE_USER` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `APELLIDO_USER` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL,
  `PASS_USER` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `CELULAR_USER` varchar(12) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID_CATEGORIA`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`ID_COMPRA`),
  ADD KEY `ID_USER` (`ID_USER`),
  ADD KEY `ID_USER_2` (`ID_USER`),
  ADD KEY `FK_COMPRAN` (`ID_PRODUCTO`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`ID_IMAGEN`),
  ADD KEY `FK_TIENEN` (`ID_PRODUCTO`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`ID_PERFIL`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_PRODUCTO`),
  ADD KEY `FK_PERTENECEN` (`ID_CATEGORIA`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_USER`),
  ADD KEY `FK_ASOCIAN` (`ID_PERFIL`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID_CATEGORIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `ID_IMAGEN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `ID_PERFIL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_PRODUCTO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `FK_COMPRAN` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`),
  ADD CONSTRAINT `FK_COMPRAN2` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`);

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `FK_TIENEN` FOREIGN KEY (`ID_PRODUCTO`) REFERENCES `productos` (`ID_PRODUCTO`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_PERTENECEN` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `categorias` (`ID_CATEGORIA`);

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_ASOCIAN` FOREIGN KEY (`ID_PERFIL`) REFERENCES `perfil` (`ID_PERFIL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

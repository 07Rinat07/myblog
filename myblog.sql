-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 11 2023 г., 13:44
-- Версия сервера: 8.0.35-0ubuntu0.22.04.1
-- Версия PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `myblog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE `article` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `content` text COLLATE utf8mb4_general_ci,
  `date` date DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `viewed` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `title`, `description`, `content`, `date`, `image`, `viewed`, `user_id`, `status`, `category_id`) VALUES
(1, 'test title1', 'for test blog1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-11-27', 'f7f1a1bf71bb861486a5a8b8fd669e41.jpg', NULL, NULL, NULL, 3),
(2, 'test title 2', 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2023-11-27', 'f250e00b8df0d176b78999838479432d.jpg', NULL, NULL, NULL, 3),
(8, 'test title 3 de Finibus Bonorum et Malorum\"', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', '2023-11-30', '33a74458a8d389b3f6f8f32707c8f499.jpg', NULL, NULL, NULL, 1),
(9, ' title #4 ', 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2023-11-30', 'ce7cebd2e1fbd56610bbee00815cb52a.jpg', NULL, NULL, NULL, 2),
(10, 'title#5', 'Encontré muy interesante esta definición y quise compartirla con ustedes...\r\nEl lorem ipsum, un texto de relleno muy utilizado en diseño gráfico', 'Lorem ipsum es, básicamente, un texto de relleno (dummy text) que, habitualmente, se utiliza en diseño gráfico , web o editorial para suplantar un texto que no ha sido entregado por el cliente, para hacer demostraciones tipográficas o borradores para crear diseños visuales antes de insertar el texto final.\r\n\r\nSe utiliza este texto en los diseños para que, al estar escrito en un lenguaje clásico y no entenderse, los clientes se centren en el diseño y no en el texto, ya que es habitual que, si se entiende, toman más atención al contenido del texto.\r\n\r\nUna de las cualidades del texto en cuestión es que tiene una distribución de las letras similar a las del inglés.\r\n\r\nNeque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit… («No hay nadie a quien le guste el dolor, que lo busque o desee tenerlo, porque sencillamente, es dolor...»)', '2023-11-30', '6c8d166e92cc4386cd0ea8cae1376fa8.jpg', NULL, NULL, NULL, 2),
(11, ' title #6', 'Origen del Lorem Ipsum', 'El Lorem Ipsum se concibe originalmente en latín. No posee como mencionábamos con anterioridad alguna traducción fiel, pues se trata de una sucesión de palabras y letras aleatorias.\r\n\r\nEl Lorem Ipsum encuentra su origen en un tratado del renacimiento conocido como “Finibus Bonorum et Malorum” escrito por Marco Tulio Cícero en el siglo XVI.\r\n\r\nEl texto original del que proviene describe un tratado sobre teorías éticas y en dicho texto el Lorem Ipsum se conoce como \"Lorem ipsum dolor sit amet…\"', '2023-11-30', '0a16e1784fdb7ed6f25b97655f24e1e5.jpg', NULL, NULL, NULL, 3),
(12, 'title #7', 'Implementación del Lorem Ipsum y sus inicios', 'Para recapitular, reitero que el Lorem Ipsum no posee traducción alguna, sin embargo es posible referir la traducción del texto original del cual deriva. Si eres tan curioso como yo, de tanto hablar del Lorem Ipsum ya debes querer saber que dice.\r\n\r\nQuédate tranquilo porque no planeo dejarte con la duda, así que podrás dormir con tranquilidad esta noche.\r\n\r\n\"Ni tampoco hay nadie que ame, persiga y quiera alcanzar el dolor mismo porque sea dolor, sino porque a veces se dan las circunstancias de tal manera, que con esfuerzo y dolor puede obtenerse algún gran placer.\"\r\nEn efecto ¿quién de nosotros asume algún ejercicio físico trabajoso, si no es para conseguir alguna ventaja de él?\r\n\r\nPor otra parte, ¿quién censuraría con razón a aquel que quiere estar en un placer al que no siga ninguna molestia, o a aquel que huye del dolor con el que no se produce ningún placer?\r\n\r\nPero sin duda acusamos y juzgamos, como los más dignos de un justo aborrecimiento a aquellos que, ablandados y corrompidos por el encanto de los placeres presentes, cegados por el deseo, no prevén los dolores y las molestias que han de sucederles, y están en falta semejante quienes abandonan sus deberes por debilidad de espíritu, es decir, por huir de esfuerzos y dolores.', '2023-11-30', '8ef0a5bc2787841607e9ce46a6eac916.jpg', NULL, NULL, NULL, 1),
(13, 'title #8', 'Diseño Gráfico con IA: Más Allá de la Estética', 'El diseño gráfico siempre ha sido un campo centrado en la estética, pero la inteligencia artificial está llevando esta estética a nuevos niveles. La IA es capaz de analizar vastas cantidades de datos visuales y tendencias de diseño, lo que permite a los diseñadores generar ideas frescas y novedosas. Esto se traduce en una mayor diversidad y originalidad en el diseño gráfico. Los algoritmos de IA pueden crear composiciones, tipografías y paletas de colores basados en una profunda comprensión de lo que resuena con la audiencia.\r\n\r\nLa IA también ha introducido el concepto de “diseño emocional”. Los algoritmos pueden evaluar cómo diferentes elementos visuales afectan las emociones y utilizar esta información para crear diseños que resuenen emocionalmente con la audiencia. Por ejemplo, una marca puede utilizar la IA para elegir colores y formas que transmitan confianza, mientras que otra puede optar por elementos que evocan alegría o sorpresa. Esta capacidad de diseño emocional permite a las marcas conectar de manera más auténtica con sus audiencias y lograr un impacto duradero.\r\n\r\n', '2023-11-30', 'e829cdf243b58d7a3f0c76bf7b102ee2.jpg', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `article_tag`
--

CREATE TABLE `article_tag` (
  `id` int NOT NULL,
  `article_id` int DEFAULT NULL,
  `tag_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`) VALUES
(3, 2, 1),
(7, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'category 1'),
(2, 'category 2'),
(3, 'category 3');

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `article_id` int DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8mb4_general_ci NOT NULL,
  `apply_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1701103035),
('m231125_060139_create_article_table', 1701103038),
('m231125_060226_create_category_table', 1701103038),
('m231125_060304_create_tag_table', 1701103038),
('m231125_060322_create_user_table', 1701103038),
('m231125_060345_create_comment_table', 1701103038),
('m231125_060425_create_article_tag_table', 1701103039);

-- --------------------------------------------------------

--
-- Структура таблицы `tag`
--

CREATE TABLE `tag` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tag`
--

INSERT INTO `tag` (`id`, `title`) VALUES
(1, 'Tag1'),
(2, 'Tag2');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `isAdmin` int DEFAULT '0',
  `photo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `isAdmin`, `photo`) VALUES
(1, 'john', 'john@example.com', 'john12', 0, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_article_article_id` (`article_id`),
  ADD KEY `idx_tag_id` (`tag_id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-post-user_id` (`user_id`),
  ADD KEY `idx-article_id` (`article_id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article`
--
ALTER TABLE `article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `fk-tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tag_article_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk-article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-post-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

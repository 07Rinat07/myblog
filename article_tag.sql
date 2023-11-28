-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 28 2023 г., 17:29
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
(7, 1, 2),
(11, 3, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_article_article_id` (`article_id`),
  ADD KEY `idx_tag_id` (`tag_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `fk-tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tag_article_article_id` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

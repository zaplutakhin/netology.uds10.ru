-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Хост: 10.0.0.105:3306
-- Время создания: Фев 15 2019 г., 09:10
-- Версия сервера: 10.1.38-MariaDB
-- Версия PHP: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `zaplutakhin_netology`
--

-- --------------------------------------------------------

--
-- Структура таблицы `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `autor` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Ожидает ответа',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Дамп данных таблицы `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `theme`, `date`, `autor`, `status`) VALUES
(23, 'Вопрос 1', 'Ответ 1', 'Общие', '2019-01-28 18:32:15', 'Алексей', 'Опубликован'),
(24, 'Вопрос 2', 'Ответ 2', 'Общие', '2019-01-28 18:32:33', 'Алексей', 'Скрыт'),
(25, 'Вопрос 3', '', 'Другие', '2019-01-28 18:32:52', 'Алексей', 'Ожидает ответа'),
(26, 'Вопрос 4', '', 'Разные', '2019-01-28 18:33:11', 'Дмитрий', 'Ожидает ответа'),
(27, 'Вопрос 5', 'ответ', 'Другие', '2019-01-28 19:48:01', 'Алексей', 'Опубликован'),
(28, 'Вопрос 6', 'ответ', 'Общие', '2019-01-28 19:48:27', 'Андрей', 'Скрыт'),
(29, 'Вопрос', '', 'Общие', '2019-01-31 17:29:24', 'Алексей', 'Скрыт');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 'Опубликован'),
(2, 'Ожидает ответа'),
(3, 'Скрыт');

-- --------------------------------------------------------

--
-- Структура таблицы `theme`
--

CREATE TABLE IF NOT EXISTS `theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `theme`
--

INSERT INTO `theme` (`id`, `category`) VALUES
(1, 'Общие'),
(2, 'Другие'),
(3, 'Разные');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `auth_key` varchar(32) DEFAULT NULL,
  `access_token` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `auth_key`, `access_token`) VALUES
(10, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

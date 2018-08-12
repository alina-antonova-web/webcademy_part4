-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 12, 2018 at 08:00 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Алина Антонова', 'Я веб-разработчик.');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `author`, `date`, `image`, `text`, `tag`) VALUES
(1, 'Парк Сьерра-Невада', 'Емельян Казаков', '2018-08-12 12:20:06', '992113143345.jpg', '&lt;p&gt;Парк находится в горах &lt;a href=&quot;&quot;&gt;Сьерра-Невада &lt;/a&gt;на востоке штата Калифорния и занимает огромную даже для Америки площадь, около 3000 кв. км. На этой площади расположены гранитные скальные стены огромной высоты, которыми, собственно, в первую очередь и знаменит парк, водопады, среди которых одни из самых высоких в США, три рощи гигантской секвойи &mdash; самого долгоживущего в мире дерева и самого большого по диаметру ствола, а также масса рек, озёр, лесов и лугов. &lt;/p&gt;\r\n            &lt;p&gt;Центром парка является долина &lt;a href=&quot;&quot;&gt;Йосемити, &lt;/a&gt;круглый год переполненная туристами, зато в большей части парка никаких туристов нет. Если вы хотите погулять по территории парка, к вашим услугам огромная разветвлённая система троп, по которым проложены маршруты длительностью от получаса до нескольких дней. Ко всем этим прелестям бесплатно прилагаются животные и птицы. Если, на ваше счастье, медведей вы скорее всего не увидите, то оленей или бурундуков увидите почти гарантированно, даже не обладая специальными навыками&lt;/p&gt;', 'Путешествия'),
(2, 'Second Post', 'Емельян Казаков', '2018-08-12 12:49:21', '458823042828.jpg', 'Парк находится в горах Сьерра-Невада на востоке штата Калифорния и занимает огромную даже для Америки площадь, около 3000 кв. км. На этой площади расположены гранитные скальные стены огромной высоты, которыми, собственно, в первую очередь и знаменит парк, водопады, среди которых одни из самых высоких в США, три рощи гигантской секвойи &mdash; самого долгоживущего в мире дерева и самого большого по диаметру ствола, а также масса рек, озёр, лесов и лугов.\r\n\r\nЦентром парка является долина Йосемити, круглый год переполненная туристами, зато в большей части парка никаких туристов нет. Если вы хотите погулять по территории парка, к вашим услугам огромная разветвлённая система троп, по которым проложены маршруты длительностью от получаса до нескольких дней. Ко всем этим прелестям бесплатно прилагаются животные и птицы. Если, на ваше счастье, медведей вы скорее всего не увидите, то оленей или бурундуков увидите почти гарантированно, даже не обладая специальными навыками', 'Путешествия'),
(3, 'Post 3', 'Емельян Казаков', '2018-08-12 12:49:48', '568166664941.jpg', 'Парк находится в горах Сьерра-Невада на востоке штата Калифорния и занимает огромную даже для Америки площадь, около 3000 кв. км. На этой площади расположены гранитные скальные стены огромной высоты, которыми, собственно, в первую очередь и знаменит парк, водопады, среди которых одни из самых высоких в США, три рощи гигантской секвойи &mdash; самого долгоживущего в мире дерева и самого большого по диаметру ствола, а также масса рек, озёр, лесов и лугов.\r\n\r\nЦентром парка является долина Йосемити, круглый год переполненная туристами, зато в большей части парка никаких туристов нет. Если вы хотите погулять по территории парка, к вашим услугам огромная разветвлённая система троп, по которым проложены маршруты длительностью от получаса до нескольких дней. Ко всем этим прелестям бесплатно прилагаются животные и птицы. Если, на ваше счастье, медведей вы скорее всего не увидите, то оленей или бурундуков увидите почти гарантированно, даже не обладая специальными навыками', 'Путешествия'),
(4, 'Post 4', 'Емельян Казаков', '2018-08-12 13:23:26', '638904475281.jpg', 'Nebelnhorn', 'Путешествия'),
(5, 'Post 5 ', 'Емельян Казаков', '2018-08-12 13:25:54', '204228354897.jpg', 'Nebelnhorn', 'Путешествия'),
(6, 'Post 6', 'Емельян Казаков', '2018-08-12 13:38:15', '460031015891.jpg', 'text', 'Путешествия'),
(7, 'Post 7', 'Емельян Казаков', '2018-08-12 13:46:28', '822753420239.jpg', 'ucho', 'Путешествия'),
(8, 'Post 8', 'Емельян Казаков', '2018-08-12 13:47:22', '784419474238.jpg', 'text text text', 'Путешествия');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `author_id`, `date`, `text`) VALUES
(1, 8, 7, '2018-08-12 14:52:21', 'Привет! Это тестовый коммент!'),
(2, 8, 1, '2018-08-12 15:22:05', 'Привет, привет!');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `secondname` varchar(255) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `recovery_code` varchar(191) DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `secondname`, `photo`, `country`, `city`, `role`, `recovery_code`, `recovery_code_times`) VALUES
(1, 'info@rightblog.ru', '$2y$10$GVjEQepTKA3qOq6cs/BAYeQDbpjZyKiagXrDD7vWg8VJCk1nvkSay', 'Емельян', 'Казаков', '541672988655.jpg', '', '', 'admin', NULL, NULL),
(7, 'alina3a@bk.ru', '$2y$10$2xFS8WhmV9AqUWxEK3xcn.7zWc9vn.jg24LmVnfjPEpKM4Fx/Lb42', 'Alina', 'Antonova', '243793548829.jpg', 'Germany', 'Ulm', 'user', 'SJfKpzWYZjdTwUx', 0),
(9, 'test@mail.ru', '$2y$10$cE5R4Djb6ASNiZe6icFQCuFy3RKJ8o06rqXWuXVGMBkQ84JdjUxPm', 'Василий', 'Кузнецов', '', 'РФ', 'Саратов', 'user', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`,`author_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `blog` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

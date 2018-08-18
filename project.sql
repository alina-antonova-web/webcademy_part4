-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 18, 2018 at 04:43 PM
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
  `description` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(1, 'Алина Антонова', '<p>Я веб разработчик. Мне 31 лет. Занимаюсь разработкой современных сайтов и приложений. Мне нравится делать интересные и современные проекты.</p>\r\n\r\n<p>Этот сайт я сделала в рамках обучения в школе онлайн обучения <a href="http://webcademy.ru/" target="_blank">WebCademy</a>. Чуть позже я освежу в нём свой контент. А пока посмотрите, как тут всё классно и красиво!</p>\r\n\r\n<h3>Что я умею</h3>\r\n\r\n<p>Меня привлекет Frontend разработка, это не только моя работа, но и хобби.Также знаком и могу решать не сложные задачи на Backend.</p>\r\n\r\n<p>Знакома и использую современный workflow, работаю с репозиториями git и сборкой проекта на gulp.</p>\r\n', '474212482757.jpg');

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
(1, 'Парк Сьерра-Невада', '1', '2018-08-12 12:20:06', '992113143345.jpg', '<p>Парк находится в горах <a href="">Сьерра-Невада </a>на востоке штата Калифорния и занимает огромную даже для Америки площадь, около 3000 кв. км. На этой площади расположены гранитные скальные стены огромной высоты, которыми, собственно, в первую очередь и знаменит парк, водопады, среди которых одни из самых высоких в США, три рощи гигантской секвойи &mdash; самого долгоживущего в мире дерева и самого большого по диаметру ствола, а также масса рек, озёр, лесов и лугов.</p>\r\n\r\n<p>Центром парка является долина <a href="">Йосемити, </a>круглый год переполненная туристами, зато в большей части парка никаких туристов нет. Если вы хотите погулять по территории парка, к вашим услугам огромная разветвлённая система троп, по которым проложены маршруты длительностью от получаса до нескольких дней. Ко всем этим прелестям бесплатно прилагаются животные и птицы. Если, на ваше счастье, медведей вы скорее всего не увидите, то оленей или бурундуков увидите почти гарантированно, даже не обладая специальными навыками</p>\r\n', '2'),
(2, 'Second Post2', '1', '2018-08-12 12:49:21', '', '<p>Парк находится в горах <a href="">Сьерра-Невада </a>на востоке штата Калифорния и занимает огромную даже для Америки площадь, около 3000 кв. км. На этой площади расположены гранитные скальные стены огромной высоты, которыми, собственно, в первую очередь и знаменит парк, водопады, среди которых одни из самых высоких в США, три рощи гигантской секвойи &mdash; самого долгоживущего в мире дерева и самого большого по диаметру ствола, а также масса рек, озёр, лесов и лугов.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>Центром парка является долина <a href="">Йосемити, </a>круглый год переполненная туристами, зато в большей части парка никаких туристов нет. Если вы хотите погулять по территории парка, к вашим услугам огромная разветвлённая система троп, по которым проложены маршруты длительностью от получаса до нескольких дней. Ко всем этим прелестям бесплатно прилагаются животные и птицы. Если, на ваше счастье, медведей вы скорее всего не увидите, то оленей или бурундуков увидите почти гарантированно, даже не обладая специальными навыками</p>\r\n', '2'),
(3, 'Post 3', '1', '2018-08-12 12:49:48', '568166664941.jpg', 'Парк находится в горах Сьерра-Невада на востоке штата Калифорния и занимает огромную даже для Америки площадь, около 3000 кв. км. На этой площади расположены гранитные скальные стены огромной высоты, которыми, собственно, в первую очередь и знаменит парк, водопады, среди которых одни из самых высоких в США, три рощи гигантской секвойи &mdash; самого долгоживущего в мире дерева и самого большого по диаметру ствола, а также масса рек, озёр, лесов и лугов.\r\n\r\nЦентром парка является долина Йосемити, круглый год переполненная туристами, зато в большей части парка никаких туристов нет. Если вы хотите погулять по территории парка, к вашим услугам огромная разветвлённая система троп, по которым проложены маршруты длительностью от получаса до нескольких дней. Ко всем этим прелестям бесплатно прилагаются животные и птицы. Если, на ваше счастье, медведей вы скорее всего не увидите, то оленей или бурундуков увидите почти гарантированно, даже не обладая специальными навыками', '2'),
(4, 'Nebelnhorn', '1', '2018-08-12 13:23:26', '982795410742.jpg', '<p><strong>Небельхорн</strong>, по-английски <em>Nebelhorn</em> - это&nbsp; небольшая вершина. С точки зрения географического расположения вершина характеризуется следующим образом: Евразия (Европа), Северные Альпы. Административно вершина расположена следующим образом: Германия.</p>\r\n\r\n<p>Вершина находится на уровне <em>две тысячи двести двадцать четыре</em> метра, или семь тысяч двести девяносто шесть футов. С точки зрения погодных условий восхождение на вершину лучше всего планировать на&nbsp; <strong>Апрель,&nbsp; Май,&nbsp; Июнь,&nbsp; Июль,&nbsp; Август,&nbsp; Сентябрь.</strong></p>\r\n\r\n<p>Вершина такого уровня как Небельхорн является скорее достопримечательностью, чем объектом горного восхождения. Для успешного восхождения вам скорее понадобится термос и бутерброды, чем технические навыки или приспособления. Поинтересуйтесь прогнозом погоды и не забудьте при необходимости плащ или дождевик.</p>\r\n', '4'),
(5, 'Nebelnhorn', '1', '2018-08-12 13:25:54', '646229376457.jpg', 'Nebelnhorn', '1'),
(6, 'Пещера', '1', '2018-08-12 13:38:15', '163781027682.jpg', 'пещера', '1'),
(7, 'Пещера - Ухо Диониса', '1', '2018-08-12 13:46:28', '142499886406.jpg', 'Этот грот назван ухом, потому что формой своей напоминает огромное лошадиное или ослиное ухо. Эхо в пещере такое необычное, что любые издаваемые внутри или поблизости звуки многократно усиливают свою громкость. Когда-то в каменоломнях рядом с гротом тяжело трудились рабы и политзаключенные, которых загнал сюда жестокий и деспотичный правитель древности - Дионисий. Работали они и шептались о своей злосчастной доле и о том, какой ненавистный правитель им достался. А Дионисий с помощью волшебного &quot;Уха&quot; подслушивал сии нелицеприятные разговоры и принимал карательные меры в целях профилактики бунтов и народных восстаний.\r\nГоворят, помимо физических измывательств над подданными царь Дионисий любил еще и мучить сиракузцев пьесами собственного сочинения, а тех, кто монаршего таланту не выдерживал, также ссылал в каменоломни. Так вот, однажды, написав новую трагедию, Дионисий на радостях приказал освободить упрятанного им под землю поэта и пригласить на премьеру. Когда прозвучала первая фраза, поэт встал и сказал: &quot;Уж лучше в каменоломню&quot;.\r\n\r\nСейчас все, кто сюда приходит, хотят на себе испытать чудесные акустические способности грота, поэтому тишина здесь - очень редкое явление в наши дни.\r\n', '1'),
(8, 'Лаго-Маджоре', '1', '2018-08-12 13:47:22', '784419474238.jpg', 'Ла́го-Маджо́ре &mdash; озеро на границе Швейцарии и Италии. Швейцарская часть озера расположена в кантоне Тичино, итальянская &mdash; в Пьемонте и Ломбардии. Урез воды Лаго-Маджоре является самой низкой точкой Швейцарии.\r\nПлощадь: 212,5 км&sup2;\r\nВысота поверхности над уровнем моря: 193 м\r\nМестоположение стока: Тичино', '1'),
(9, 'Новый пост', '1', '2018-08-12 20:35:22', '302333678398.jpg', 'Новый пост технический', '2');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Путешествия'),
(2, 'Технические заметки'),
(4, 'Хобби');

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
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `secondname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `vk` varchar(255) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `secondname`, `email`, `skype`, `vk`, `fb`, `github`, `phone`, `address`, `lat`, `lng`) VALUES
(1, '', '', 'antonova.alina@gmail.com', '', '', '', 'https://github.com/alina-antonova-web', '+4915754833931', 'Sonnenhalde 83,\r\n<br>\r\n89075 Ulm', 48.402568, '9.977842');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `file` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `text`, `file`, `date`, `file_name`) VALUES
(2, 'Василий', 'test@test.ru', 'test', NULL, '2018-08-13 21:50:44', NULL),
(4, 'maliniaka', 'test@test.ru', 'where is file?', '655505306832.jpg', '2018-08-13 21:50:44', NULL),
(5, 'Емельян', 'test@test.ru', 'dad', '925062370439.png', '2018-08-13 21:53:23', 'php-hw04.png'),
(6, '', 'only_email@test.ru', '', NULL, '2018-08-13 22:19:46', NULL),
(20, '', 'test@test.ru', 'pdf', '998046487243.pdf', '2018-08-14 11:14:56', 'extreme_programming.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `technologies`
--

CREATE TABLE `technologies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `technologies`
--

INSERT INTO `technologies` (`id`, `name`, `percent`, `category`) VALUES
(3, 'HTML5', 95, 'Frontend'),
(4, 'CSS3', 85, 'Frontend'),
(5, 'JS', 80, 'Frontend'),
(6, 'jQuery', 70, 'Frontend'),
(7, 'PHP', 95, 'Backend'),
(8, 'MySql', 85, 'Backend'),
(9, 'Git', 90, 'Workflow'),
(10, 'Gulp', 30, 'Workflow'),
(11, 'Bower', 20, 'Workflow'),
(12, 'WebPack', 20, 'Workflow');

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
(1, 'info@rightblog.ru', '$2y$10$GVjEQepTKA3qOq6cs/BAYeQDbpjZyKiagXrDD7vWg8VJCk1nvkSay', 'Емельян', 'Казаков', '929758145613.jpg', '', '', 'admin', NULL, NULL),
(7, 'alina3a@bk.ru', '$2y$10$2xFS8WhmV9AqUWxEK3xcn.7zWc9vn.jg24LmVnfjPEpKM4Fx/Lb42', 'Alina', 'Antonova', '243793548829.jpg', 'Germany', 'Ulm', 'user', 'SJfKpzWYZjdTwUx', 0),
(9, 'test@mail.ru', '$2y$10$cE5R4Djb6ASNiZe6icFQCuFy3RKJ8o06rqXWuXVGMBkQ84JdjUxPm', 'Василий', 'Кузнецов', '', 'РФ', 'Саратов', 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `period` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `period`, `name`, `description`) VALUES
(1, 'октябрь 2008 - май 2015', 'Web-мастер, ООО &quot;Эксклюзив&quot; Санкт-Петербург', 'Разработка и поддержка сайтов компании;\r\nОпыт работы с  Legacy-Code, тестирование и отладка приложений, поиск ошибок;\r\nРазработка на  PHP, JavaScript, ActionScript;\r\nГенерация XML файлов для яндекс и google маркетов;\r\nОпыт работы с базами данных  MySQL, PostgreSQL;\r\nИспользование системы контроля версий с помощью Tortoise SVN Client.'),
(3, 'июнь 2015 - по настоящее время', 'Фриланс', '');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`,`author_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technologies`
--
ALTER TABLE `technologies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `technologies`
--
ALTER TABLE `technologies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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

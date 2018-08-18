<?php

define('HOST', "http://" . $_SERVER['HTTP_HOST']."/");

define('ROOT', dirname(__FILE__).'/');

require( ROOT . 'config.php');
require( ROOT . 'db.php');
require( ROOT . 'libs/functions.php');
session_start();

if ( isLoggedIn() ) {
	$currentUser = $_SESSION['logged_user'];
}

$page_info = array('title' => 'Главная страница', 'keywords' => 'Учебный проект, портфолио, php, js, gulp, git', 'description' => 'Учебный проект, портфолио');

/*.......................................

Router

....................................*/

$uri = $_SERVER["REQUEST_URI"];
$uri = rtrim($uri, "/");
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);

switch ( $uri[0] ) {
	case '':
		include "modules/main/index.php";
		break;

	// ::::::::::::: USERS :::::::::::::::::
	case 'login':
		$page_info['title'] = 'Вход на сайт';
		include "modules/login/login.php";
		break;

	case 'registration':
		$page_info['title'] = 'Регистрация на сайте';
		include "modules/login/registration.php";
		break;

	case 'logout':
		include "modules/login/logout.php";
		break;

	case 'lost-password':
		$page_info['title'] = 'Восстановление пароля';
		include "modules/login/lost-password.php";
		break;

	case 'set-new-password':
		$page_info['title'] = 'Восстановление пароля';
		include "modules/login/set-new-password.php";
		break;

	case 'profile':
		$page_info['title'] = 'Мой профиль';
		include "modules/profile/index.php";
		break;

	case 'profile-edit':
		$page_info['title'] = 'Редактирование профиля';
		include "modules/profile/edit.php";
		break;

	// ::::::::::::: About :::::::::::::::::
	case 'about':
		$page_info['title'] = 'Обо мне';
		include "modules/about/index.php";
		break;
	case 'about-edit':
		$page_info['title'] = 'Редактировать информацию страницы "Обо мне"';
		include "modules/about/edit.php";
		break;
	case 'about-expirience-edit':
		$page_info['title'] = 'Редактировать место работы';
		include "modules/about/expirience-edit.php";
		break;
	case 'about-expirience-delete':
		$page_info['title'] = 'Удалить место работы';
		include "modules/about/expirience-delete.php";
		break;

	// ::::::::::::: Contacts :::::::::::::::::
	case 'contacts':
		$page_info['title'] = 'Контакты';
		include "modules/contacts/index.php";
		break;
	case 'contacts-edit':
		$page_info['title'] = 'Редактировать контакты';
		include "modules/contacts/edit.php";
		break;

	case 'messages':
		$page_info['title'] = 'Сообщения';
		include "modules/messages/index.php";
		break;
	case 'message-delete':
		$page_info['title'] = 'Удалить сообщение';
		include "modules/messages/delete.php";
		break;

	// ::::::::::::: BLOG :::::::::::::::::
	case 'blog':
		$page_info['title'] = 'Блог';
		include "modules/blog/index.php";
		break;
	case 'blog/post':
		$page_info['title'] = 'Пост';
		include "modules/blog/post.php";
		break;
	case 'blog/post-new':
		$page_info['title'] = 'Добавить новый пост';
		include "modules/blog/post-new.php";
		break;
	case 'blog/post-edit':
		$page_info['title'] = 'Редактировать пост';
		include "modules/blog/post-edit.php";
		break;

	// ::::::::::::: CATEGORIES :::::::::::::::::
	case 'blog/categories':
		$page_info['title'] = 'Категории';
		include "modules/categories/all.php";
		break;
	case 'blog/category-new':
		$page_info['title'] = 'Добавить категорию';
		include "modules/categories/new.php";
		break;
	case 'blog/category-edit':
		$page_info['title'] = 'Редактировать категорию';
		include "modules/categories/edit.php";
		break;
	case 'blog/category-delete':
		$page_info['title'] = 'Удалить категорию';
		include "modules/categories/delete.php";
		break;

	// ::::::::::::: WORKS :::::::::::::::::
	case 'works':
		$page_info['title'] = 'Портфолио с работами';
		include "modules/works/all.php";
		break;
	case 'works/project':
		$page_info['title'] = 'Страница проекта';
		include "modules/works/project.php";
		break;
	case 'work-new':
		$page_info['title'] = 'Добавить работу в портфолио';
		include "modules/works/new.php";
		break;
	case 'work-edit':
		$page_info['title'] = 'Редактировать информацию о работе в портфолио';
		include "modules/works/edit.php";
		break;


	default:
		include "modules/main/index.php";
		break;
}


?>
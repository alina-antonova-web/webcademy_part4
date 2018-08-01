<?php 

$currentUser = $_SESSION['logged_user'];

$user = R::load('users', $currentUser->id);

//If form was send
$errors = array();

if (isset($_POST['profile-update'])) {	

	if (trim($_POST['email']) == '' ){
		$errors[] = ['title' => 'Email не может быть пустым'];
	}

	if (trim($_POST['name']) == '' ){
		$errors[] = ['title' => 'Имя не может быть пустым'];
	}

	if (trim($_POST['secondname']) == '' ){
		$errors[] = ['title' => 'Поле "Фамилия" не может быть пустым'];
	}

	if (empty($errors)) {
		$user->email = htmlentities($_POST['email']);
		$user->name = htmlentities($_POST['name']);
		$user->secondname = htmlentities($_POST['secondname']);
		$user->file = htmlentities($_POST['file']);
		$user->country = htmlentities($_POST['country']);
		$user->city = htmlentities($_POST['city']);
		R::store($user);

		$_SESSION['logged_user'] = $user;
		$_SESSION['login'] = "1";
		$_SESSION['role'] = $user->role;
		$currentUser = $_SESSION['logged_user'];

		header('Location: '.HOST.'profile');
		exit();
	}
}

ob_start();
include ROOT . "templates/profile/profile-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
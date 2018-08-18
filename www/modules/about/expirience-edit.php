<?php 

if ( !isAdmin()){
	header("Location: " . HOST);
	die;
}

$errors = array();

if (isset($_GET['id'])) {
	$work = R::load('jobs', $_GET['id']);
	$action_title = 'Редактировать';
} 

if (isset($_POST['addWork']) || isset($_POST['editWork'])) {
	if (trim($_POST['work-period']) == '' ){
		$errors[] = ['title' => 'Период работы не может быть пустым'];
	}
	if (trim($_POST['work-name']) == '' ){
		$errors[] = ['title' => 'Название должности не может быть пустым'];
	}

	if (empty($errors)) {

		if (isset($_POST['addWork']) ){
			$work = R::dispense('jobs');
		} else {
			$work = R::load('jobs', $_POST['work-id']);
		}
		$work->period = htmlentities($_POST['work-period']);
		$work->name = htmlentities($_POST['work-name']);
		$work->description = $_POST['work-description'];

		R::store($work);

		header('Location: '.HOST.'about-edit#works');
		exit();

	} else {
		if (isset($_POST['addWork']) ){
			$work = array('id'=> "new", 'period' => $_POST['work-period'], 'name' => $_POST['work-name'], 'description' => $_POST['work-description']);
			$action_title = 'Добавить';
		} else {
			$work = R::load('jobs', $_POST['work-id']);
			$action_title = 'Редактировать';
		}
	}
}
//Content for main part
ob_start();
include ROOT . "templates/about/expirience-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
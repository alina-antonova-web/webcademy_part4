<?php 

if ( !isAdmin()){
	header("Location: " . HOST);
	die;
}

$errors = array();

if (isset($_GET['id'])) {
	$work = R::load('works', $_GET['id']);
	$action_title = 'Удалить';
	$errors[] = ['title' => 'Вы уверены, что хотите удалить запись об опыте работы?'];
} 

if (isset($_POST['deleteWork']) && isset($_POST['work-id'])) {
	$work = R::load('works', $_POST['work-id']);
	R::trash($work);

	header('Location: '.HOST.'about-edit#works');
	exit();
}
//Content for main part
ob_start();
include ROOT . "templates/about/expirience-delete.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
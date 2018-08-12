<?php 

if ( !isAdmin()){
	header("Location: " . HOST);
	die;
}


//If form was send
$errors = array();

$category =R::load('categories', $_GET['id']);

if (isset($_POST['editCategory'])) {	

	if (trim($_POST['title']) == '' ){
		$errors[] = ['title' => 'Название не может быть пустым'];
	}

	if (empty($errors)) {

		$category->name = htmlentities($_POST['title']);

		R::store($category);


		header('Location: '.HOST.'blog/categories');
		exit();
	}
}

ob_start();
include ROOT . "templates/categories/edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
<?php 

if ( !isAdmin()){
	header("Location: " . HOST);
	die;
}


//If form was send
$errors = array();

$category =R::load('categories', $_GET['id']);

if (isset($_POST['deleteCategory'])) {	

	R::trash( $category );
	
	header('Location: '.HOST.'blog/categories');
	exit();
}

ob_start();
include ROOT . "templates/categories/delete.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
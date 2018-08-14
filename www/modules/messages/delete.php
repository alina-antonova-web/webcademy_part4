<?php 

if ( !isAdmin()){
	header("Location: " . HOST);
	die;
}


//If form was send
$errors = array();

$message =R::load('messages', $_GET['id']);

if (isset($_POST['deleteMessage'])) {

	$file = $message->file;
	$folderLocation = ROOT . 'usercontent/uploadfiles/';

	if ($file != "") {
		$picurl = $folderLocation . $file;
		if (file_exists($picurl)) { unlink($picurl); }
	}	

	R::trash( $message );
	
	header('Location: '.HOST.'messages');
	exit();
}

ob_start();
include ROOT . "templates/messages/delete.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
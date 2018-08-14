<?php 

if ( !isAdmin()){
	header("Location: " . HOST);
	die;
}

$messages = R::find('messages', 'ORDER BY id DESC');

//Content for main part
ob_start();
include ROOT . "templates/messages/messages.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
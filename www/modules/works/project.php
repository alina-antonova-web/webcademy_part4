<?php 

$work = R::findOne('works', 'id = ?', array($_GET['id']));

if (!$work['name']) {
	$work = R::findOne('works', 'id = ?', array(1));
}

//Content for main part
ob_start();
include ROOT . "templates/works/project.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
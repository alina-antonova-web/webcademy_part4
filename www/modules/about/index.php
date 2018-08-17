<?php 

$about = R::load('about', 1);

$frontend_technologies = R::find('technologies', "WHERE category = 'Frontend' ORDER BY id");
$backend_technologies = R::find('technologies', "WHERE category = 'Backend' ORDER BY id");
$workflow_technologies = R::find('technologies', "WHERE category = 'Workflow' ORDER BY id");

$works = R::find('works', "ORDER BY id DESC");

//Content for main part
ob_start();
include ROOT . "templates/about/about.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>

?>
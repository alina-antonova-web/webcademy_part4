<?php 

$about = R::load('about', 1);

$blogPosts = R::find('blog', 'ORDER BY id DESC LIMIT 3');

$title = "Main";
$content = "Content of main page";

ob_start();
include ROOT . "templates/main/main.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
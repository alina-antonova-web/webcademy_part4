<?php 

$title = "Blog";
$content = "Content of blog page";

$blogPosts = ['Post 1', 'Post 2', 'Post 3', 'Post 4', 'Post 5', 'Post 6'];

//Content for main part
ob_start();
include ROOT . "templates/blog/blog-all-posts.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
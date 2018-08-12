<?php 

if (isset($_GET['tag'])) {
	$blogPosts = R::find('blog', "tag = '".htmlentities($_GET['tag'])."' ORDER BY id DESC");
	if (count($blogPosts) == 0){
		$blogPosts = R::find('blog', 'ORDER BY id DESC');
	}
} else {
	$blogPosts = R::find('blog', 'ORDER BY id DESC');	
}




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
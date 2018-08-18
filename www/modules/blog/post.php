<?php 

$post = R::getAll("SELECT blog.*, users.name, users.secondname, categories.name as catName  FROM blog 
	INNER JOIN users ON blog.author = users.id
	INNER JOIN categories ON blog.tag = categories.id 
 	WHERE
	        blog.id = '".intval($_GET['id'])."'
	LIMIT 1");

if (!$post) {
	$post = R::getAll("SELECT blog.*, users.name, users.secondname, categories.name as catName  FROM blog 
	INNER JOIN users ON blog.author = users.id
	INNER JOIN categories ON blog.tag = categories.id 
 	WHERE
	        blog.id = '1'
	LIMIT 1");
}

$post = $post[0];


$errors = array();

if ( isLoggedIn() && isset($_POST['addComment'])){
	if (trim($_POST['message']) == '' ){
		$errors[] = ['title' => 'Комментарий не может быть пустым.'];
	}

	if (empty($errors)) {

		$comment = R::dispense('comments');
		$comment->text = htmlentities($_POST['message']);
		$comment->post_id = $post['id'];
		$comment->author_id = $currentUser->id;
		R::store($comment);


		header('Location: '.HOST.'blog/post?id='.$_GET['id']);
		exit();
	}
}

// SELECT comments
	$comments = R::getAll("SELECT comments.*, users.photo, users.name, users.secondname  FROM comments INNER JOIN users 
	    WHERE 
	        comments.author_id = users.id AND
	        comments.post_id = '". htmlentities($_GET['id']) . "'
	    ORDER BY comments.date DESC
	    ");

//Content for main part
ob_start();
include ROOT . "templates/blog/blog-post.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
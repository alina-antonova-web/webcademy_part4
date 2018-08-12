<?php 

$post = R::findOne('blog', 'id = ?', array($_GET['id']));

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
	        comments.post_id = '". $_GET['id'] . "'
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
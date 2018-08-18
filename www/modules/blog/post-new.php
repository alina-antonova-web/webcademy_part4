<?php 

if ( !isAdmin()){
	header("Location: " . HOST);
	die;
}


//If form was send
$errors = array();

if (isset($_POST['addPost'])) {	

	if (trim($_POST['title']) == '' ){
		$errors[] = ['title' => 'Название не может быть пустым'];
	}

	if (trim($_POST['description']) == '' ){
		$errors[] = ['title' => 'Содержание поста не может быть пустым'];
	}

	if (empty($errors)) {

		$post = R::dispense('blog');
		$post->title = htmlentities($_POST['title']);
		$post->text = $_POST['description'];
		$post->author = $currentUser->id;
		$post->tag = $_POST['tag'];

		if ( isset($_FILES['photo']['name']) && $_FILES['photo']['tmp_name'] != "" ) {
			
			// Write file image params in variables
			$fileName = $_FILES['photo']['name'];
			$fileTmpLoc = $_FILES['photo']['tmp_name'];
			$fileType = $_FILES['photo']['type'];
			$fileSize = $_FILES['photo']['size'];
			$fileErrorMsg = $_FILES['photo']['error'];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			// Check file properties on different conditions
			list($width, $height) = getimagesize($fileTmpLoc);
			if($width < 10 || $height < 10) {
				$errors[] = ['title' => 'That image has no dimensions'];
			}
			$db_file_name = rand(100000000000, 999999999999) . "." . $fileExt;
			if($fileSize > 4194304) {
				$errors[] = ['title' => 'Your image file was larger than 4 mb'];
			} else if (!preg_match("/\.(gif|jpg|png)$/i", $fileName)) {
				$errors[] = ['title' => 'Your image file was not jpg, gif or png type'];
			} else if ($fileErrorMsg == 1) {
				$errors[] = ['title' => 'An unknown error occured'];	
			} 

			$imageFolderLocation = ROOT . 'usercontent/blog/';


			$uploadfile = $imageFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'File upload failed'];
			}

			include_once( ROOT . '/libs/image_resize_imagick.php');
			$target_file = $imageFolderLocation . $db_file_name;
			$resized_file = $imageFolderLocation . $db_file_name;
			$wmax = 920;
			$hmax = 620;
			$img = createThumbnailBig($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			// Small avatar

			$resized_file = $imageFolderLocation . 'small/' . $db_file_name;
			$wmax = 320;
			$hmax = 140;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);


			$post->image = $db_file_name;
		}

		R::store($post);


		header('Location: '.HOST.'blog');
		exit();
	}
}

$categories = R::find('categories', 'ORDER BY name');

ob_start();
include ROOT . "templates/blog/post-new.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
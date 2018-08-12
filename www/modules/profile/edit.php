<?php 

$currentUser = $_SESSION['logged_user'];

$user = R::load('users', $currentUser->id);

//If form was send
$errors = array();

if (isset($_POST['profile-update'])) {	

	if (trim($_POST['email']) == '' ){
		$errors[] = ['title' => 'Email не может быть пустым'];
	}

	if (trim($_POST['name']) == '' ){
		$errors[] = ['title' => 'Имя не может быть пустым'];
	}

	if (trim($_POST['secondname']) == '' ){
		$errors[] = ['title' => 'Поле "Фамилия" не может быть пустым'];
	}

	if (empty($errors)) {
		$user->email = htmlentities($_POST['email']);
		$user->name = htmlentities($_POST['name']);
		$user->secondname = htmlentities($_POST['secondname']);
		$user->country = htmlentities($_POST['country']);
		$user->city = htmlentities($_POST['city']);

		if ( isset($_FILES['avatar']['name']) && $_FILES['avatar']['tmp_name'] != "" ) {
			
			// Write file image params in variables
			$fileName = $_FILES['avatar']['name'];
			$fileTmpLoc = $_FILES['avatar']['tmp_name'];
			$fileType = $_FILES['avatar']['type'];
			$fileSize = $_FILES['avatar']['size'];
			$fileErrorMsg = $_FILES['avatar']['error'];
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

			$avatar = $user->photo;
			$avatarFolderLocation = ROOT . 'usercontent/avatar/';

			if ($avatar != "") {
				$picurl = $avatarFolderLocation . $avatar;
				if (file_exists($picurl)) { unlink($picurl); }
			}

			$uploadfile = $avatarFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'File upload failed'];
			}

			include_once( ROOT . '/libs/image_resize_imagick.php');
			$target_file = $avatarFolderLocation . $db_file_name;
			$resized_file = $avatarFolderLocation . $db_file_name;
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnailSquare($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			// Small avatar

			$resized_file = $avatarFolderLocation . 'small/' . $db_file_name;
			$wmax = 48;
			$hmax = 48;
			$img = createThumbnailSquare($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			$user->photo = $db_file_name;


		}

		R::store($user);

		$_SESSION['logged_user'] = $user;
		$_SESSION['login'] = "1";
		$_SESSION['role'] = $user->role;
		$currentUser = $_SESSION['logged_user'];

		header('Location: '.HOST.'profile');
		exit();
	}
}

ob_start();
include ROOT . "templates/profile/profile-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
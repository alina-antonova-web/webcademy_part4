<?php 

if ( !isAdmin()){
	header("Location: " . HOST);
	die;
}

$about = R::load('about', 1);

$frontend_technologies = R::find('technologies', "WHERE category = 'Frontend' ORDER BY id");
$backend_technologies = R::find('technologies', "WHERE category = 'Backend' ORDER BY id");
$workflow_technologies = R::find('technologies', "WHERE category = 'Workflow' ORDER BY id");


$jobs = R::find('jobs', "ORDER BY id");

$errors = array();

if (isset($_POST['saveAbout'])) {	

	if (trim($_POST['userName']) == '' ){
		$errors[] = ['title' => 'Имя не может быть пустым'];
	}
	if (trim($_POST['userInfo']) == '' ){
		$errors[] = ['title' => 'Информация на главной не может быть пустой'];
	}

	if (empty($errors)) {

		$about->name = htmlentities($_POST['userName']);
		$about->description = $_POST['userInfo'];

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

			$avatar = $about->photo;
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

			$about->photo = $db_file_name;


		} 

		R::store($about);

	}
}

if (isset($_POST['saveTechnologies'])) {
	$sql = '';
	foreach ($_POST as $skill => $value) {
		
		if ($skill != 'saveTechnologies') {
			$sql .= "UPDATE `technologies` SET `percent` = '".intval($value)."' WHERE `technologies`.`name` = '$skill'; ";
		}
	}

	$update = R::getAll($sql);

	$frontend_technologies = R::find('technologies', "WHERE category = 'Frontend' ORDER BY id");
	$backend_technologies = R::find('technologies', "WHERE category = 'Backend' ORDER BY id");
	$workflow_technologies = R::find('technologies', "WHERE category = 'Workflow' ORDER BY id");

}


//Content for main part
ob_start();
include ROOT . "templates/about/edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>

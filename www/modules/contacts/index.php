<?php 

$contacts = R::load('contacts', 1);

$errors = array();

if (isset($_POST['sendMessage'])) {

	if (trim($_POST['email']) == '' ){
		$errors[] = ['title' => 'Email не может быть пустым'];
	}

	if (empty($errors)) {

		$message = R::dispense('messages');
		$message->name = htmlentities($_POST['name']);
		$message->email = htmlentities($_POST['email']);
		$message->text = htmlentities($_POST['Message']);

		if ( isset($_FILES['file']['name']) && $_FILES['file']['tmp_name'] != "" ) {
			
			// Write file image params in variables
			$fileName = $_FILES['file']['name'];
			$fileTmpLoc = $_FILES['file']['tmp_name'];
			$fileType = $_FILES['file']['type'];
			$fileSize = $_FILES['file']['size'];
			$fileErrorMsg = $_FILES['file']['error'];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			
			$db_file_name = rand(100000000000, 999999999999) . "." . $fileExt;

			if($fileSize > 4194304) {
				$errors[] = ['title' => 'Your file was larger than 4 mb'];
			}
			 else if (!preg_match("/\.(gif|jpg|png|pdf|doc|txt)$/i", $fileName)) {
				$errors[] = ['title' => 'Your file was not jpg, gif, png, pdf, doc type'];
			} 
			else if ($fileErrorMsg == 1) {
				$errors[] = ['title' => 'An unknown error occured'];	
			} 

			$folderLocation = ROOT . 'usercontent/uploadfiles/';


			$uploadfile = $folderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'File upload failed'];
			}


			$message->file = $db_file_name;
			$message->file_name = htmlentities($fileName);
		}

		R::store($message);

	}

}


//Content for main part
ob_start();
include ROOT . "templates/contacts/contacts.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>
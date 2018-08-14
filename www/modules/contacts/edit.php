<?php 

if ( !isAdmin()){
	header("Location: " . HOST);
	die;
}

$errors = array();

$contacts = R::load('contacts', 1);

if (isset($_POST['saveContacts'])) {

	if (trim($_POST['email']) == '' ){
		$errors[] = ['title' => 'Email не может быть пустым'];
	}

	if (trim($_POST['phone']) == '' ){
		$errors[] = ['title' => 'Телефон не может быть пустым'];
	}

	if (empty($errors)) {

		$contacts->name = htmlentities($_POST['name']);
		$contacts->secondname = htmlentities($_POST['secondname']);
		$contacts->email = htmlentities($_POST['email']);
		$contacts->skype = htmlentities($_POST['skype']);
		$contacts->vk = htmlentities($_POST['vk']);
		$contacts->fb = htmlentities($_POST['fb']);
		$contacts->github = htmlentities($_POST['github']);
		$contacts->phone = htmlentities($_POST['phone']);
		$contacts->address = htmlentities($_POST['address']);

		R::store($contacts);


		header('Location: '.HOST.'contacts');
		exit();
	}

}


//Content for main part
ob_start();
include ROOT . "templates/contacts/contacts-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";


?>
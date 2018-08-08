<?php 
//If form was send
$errors = array();
$success = array();

if (!empty($_GET['email'])) {
	$user = R::findOne('users', 'email = ?', array($_GET['email']));
	if ($user) {
		$user->recovery_code_times--;
		R::store($user);

		if ($user->recovery_code == $_GET['code']) {
			if ($user->recovery_code_times < 1) {
				$errors[] =  [
					'title' => 'Превышен лимит попыток', 
					'description' => "Был превышен лимит попыток для восстановления пароля. Начните процедуру восстановления пароля заново. 
						<br><a href='".HOST."login' class='button button-login'>Перейти на страницу входа</a>."];
			}
		} else {
			$errors[] =  [
				'title' => 'Неверный код восстановления', 
				'description' => "Был указан неверный код восстановления пароля. Перейдите по ссылке из письма либо начните процедуру восстановления пароля заново. 
					<br><a href='".HOST."login'  class='button button-login'>Перейти на страницу входа</a>."];
		}
	} else {
		$errors[] =  [
			'title' => 'Пользователь с таким email не существует', 
			'description' => "Пользователь с таким email не найден. Начните процедуру восстановления пароля заново. 
				<br><a href='".HOST."login'  class='button button-login'>Перейти на страницу входа</a>."];
	}
} elseif (isset($_POST['set-password'])) {	

	if (trim($_POST['resetpassword']) == '' ){
		$errors[] = ['title' => 'Введите новый пароль'];
	}

	if (empty($errors)) {

		$user = R::findOne('users', 'email = ?', array($_POST['resetemail']));

		if ($user) {
			if ($user->recovery_code != $_POST['onetimecode'] || $user->recovery_code_times < 1) {
				$errors[] =  [
					'title' => 'Неверный код восстановления', 
					'description' => "Был указан неверный код восстановления пароля. Перейдите по ссылке из письма либо начните процедуру восстановления пароля заново. <a href='".HOST."login'>Перейти на страницу входа</a>."];
			} else {
				$user->password = password_hash($_POST['resetpassword'], PASSWORD_DEFAULT);
				$user->recovery_code_times = 0;
				R::store($user);

				header('Location: '.HOST.'login');
				exit();
			}
			
		} else {
			$errors[] = ['title' => 'Пользователь с таким email не существует', 'description' => "Начните процедуру восстановления пароля заново или <a href='".HOST."registration'>зарегистрируйтесь на сайте</a>."];
		}
		
	}
} else {
	header("Location: " . HOST . "lost-password");
	die;
}


//Content for main part
ob_start();
include ROOT . "templates/login/set-new-password.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/login/login-page.tpl";


?>
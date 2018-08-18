<?php 
//If form was send
$errors = array();
$success = array();

if (isset($_POST['lost'])) {	

	if (trim($_POST['email']) == '' ){
		$errors[] = ['title' => 'Введите Email'];
	}

	if (empty($errors)) {

		$user = R::findOne('users', 'email = ?', array($_POST['email']));

		if ($user) {
			
			function random_str($num = 30 ) {
				return substr(str_shuffle('0123456789abcdefghijklmnoprstuvwxyzABCDEFGHIJKLMNOPRSTUVWXYZ'), 0, $num);
			}
			$recovery_code = random_str(15);
			$user->recovery_code = $recovery_code;
			$user->recovery_code_times = 3;
			R::store($user);

			// Instructions for user
			$recovery_message = "<p>Код для сброса пароля: <b>$recovery_code</b></p>";
			$recovery_message .= "<p>Для сброса пароля перейдите по ссылке ниже, и установите новый пароль:</p>";
			$recovery_message .= "<p><a href='".HOST."set-new-password?email=".$user->email."&code=".$recovery_code."' target='_blank'>";
			$recovery_message .= "Установить новый пароль</a></p>";

			$headers = "MIME-Version: 1.0" . PHP_EOL . 
						"Content-Type: text/html; charset=utf-8" . PHP_EOL . 
						"From:" . adopt(SITE_NAME) . "<" . SITE_EMAIL . ">" . PHP_EOL . 
						"Reply-To: " . ADMIN_EMAIL;

			if ( mail($user->email, 'Восстановление доступа', $recovery_message, $headers) ) {
				$success[] = "Инструкции по восстановлению доступа отправленны на ". $user->email;
			}
			


			
		} else {
			$errors[] = ['title' => 'Пользователь с таким email не существует', 'description' => "Введите верные данные для восстановления пароля или <a href='<?=HOST?>registration'>зарегистрируйтесь на сайте</a>."];
		}
		
	}
}


//Content for main part
ob_start();
include ROOT . "templates/login/lost-password.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/login/login-page.tpl";


?>
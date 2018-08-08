<form class="form-container" method="POST" action="<?=HOST?>set-new-password" id="form-validate">
	<div class="form-title">Введите новый пароль</div>
	
	<?php require ROOT."templates/_parts/_errors.tpl"; 

	if (empty($errors) || isset($_POST['set-password'])) { ?>	
		<div class="additional-info">
			Введите новый пароль для вашего аккаунта.
		</div>
		<div class="form-fields" id="form-fields">
			<input type="password" name="resetpassword" id="newPass" class="form-full-width" placeholder="Новый пароль">
			<input type="hidden" name="resetemail" value="<?=$_GET['email']?>">
			<input type="hidden" name="onetimecode" value="<?=$_GET['code']?>">
		</div>
		<div class="additional-info">
			<a href="<?=HOST?>login">Вернуться ко входу</a>
		</div>
		<input type="submit" name="set-password" value="Сохранить пароль" class="button button-login" >
	<?php } ?> 
</form>
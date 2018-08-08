<form class="form-container" method="POST" action="<?=HOST?>lost-password" id="form-validate">
	<div class="form-title">Забыл пароль</div>
	
	<?php require ROOT."templates/_parts/_errors.tpl"; ?>
	
	<?php if (empty($success)) { ?>
	<div class="form-fields" id="form-fields">
	  <input class="form-full-width" type="text" name="email" placeholder="E-mail"/>
	</div>
	<?php } ?>
	<div class="additional-info">
		<a href="<?=HOST?>login">Вернуться ко входу</a>
	</div>
	<input type="submit" name="lost" value="Восстановить пароль" class="button button-login" >
</form>
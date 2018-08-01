<form class="form-container" action="<?=HOST?>registration" id="form-validate" method="POST">
    <div class="form-title">Регистрация</div>
    
    <?php require ROOT."templates/_parts/_errors.tpl"; ?>

    <div class="form-fields" id="form-fields">
      <input class="form-full-width" type="text" name="email" placeholder="E-mail" value="alina3a@bk.ru" />
      <input class="form-full-width" type="password" name="password" placeholder="Пароль" value="123456" />
    </div>
    <div class="additional-info"></div>
    <input type="submit" name="registration" value="Регистрация" class="button button-login" >
 </form>
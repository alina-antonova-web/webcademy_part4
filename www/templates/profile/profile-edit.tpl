  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Редактировать - профиль</h1>
          <?php require ROOT."templates/_parts/_errors.tpl"; ?>
          <form enctype="multipart/form-data" method="POST" action="<?=HOST?>profile-edit">
          <section class="add-post">
            <div class="add-post__title">Имя</div>
            <input class="form-full-width" type="text" name="name" value="<?=$currentUser->name?>"/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Фамилия</div>
            <input class="form-full-width" type="text" name="secondname" value="<?=$currentUser->secondname?>"/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Email</div>
            <input class="form-full-width" type="text" name="email"  value="<?=$currentUser->email?>"/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Фотография</div>
            <div class="form-download">
              <div class="form-download__title">Изображение jpg или png, рекомендуемый размер 205 на 205 пикселей, вес до 2Мб.</div>
              <div class="form-download__container"> 
                <label class="form-download__btn">Выбрать файл
                  <input type="file" id="file" name="avatar" value="<?=$currentUser->photo?>" style="display:none;"/>
                </label>
                <input class="form-download__file-name" id="value" type="text"  value="Файл не выбран" disabled="disabled"/>
              </div>
            </div>
            <div class="avatar avatar-big"><img src="<?=HOST?>/usercontent/avatar/<?=$currentUser->photo?>" alt=""/></div>
          </section>
          <section class="add-post">
            <div class="add-post__title">Страна</div>
            <input class="form-full-width" type="text" name="country" value="<?=$currentUser->country?>"/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Город</div>
            <input class="form-full-width" type="text" name="city" value="<?=$currentUser->city?>"/>
          </section>
          <section class="add-post">
            <input class="button button-save" type="submit" name="profile-update" value="Сохранить"/>
            <a class="button button-regular" href="<?=HOST?>profile"> Отмена </a>
          </section>
        </form>
         
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>

    <script src="<?php echo HOST;?>templates/assets/js/fileReader.js"></script>
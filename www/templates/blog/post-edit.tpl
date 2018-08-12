  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Редактировать пост</h1>
          <?php require ROOT."templates/_parts/_errors.tpl"; ?>
          <form enctype="multipart/form-data" method="POST" action="<?=HOST?>blog/post-edit">
          <section class="add-post">
            <div class="add-post__title">Название</div>
            <input class="form-full-width" type="text" name="title" value="<?=$currentUser->name?>/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Тэг, раздел, тема</div>
            <input class="form-full-width" type="text" name="tag" placeholder="Введите название тэга, раздела, темы"/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Изображение</div>
            <div class="form-download">
              <div class="form-download__title">Изображение jpg или png, размером больше чем 100х100 пикселей, вес до 2Мб.</div>
              <div class="form-download__container"> 
                <label class="form-download__btn">Выбрать файл
                  <input type="file" id="file" name="photo" style="display:none;"/>
                </label>
                <input class="form-download__file-name" id="value" type="text"  value="Файл не выбран" disabled="disabled"/>
              </div>
            </div>
          </section>
          <section class="add-post">
            <div class="add-post__title">Содержание</div>
            <textarea class="form-message" name="description" placeholder="Текст поста"></textarea>
          </section>
          <section class="add-post">
            <input class="button button-save" type="submit" name="editPost" value="Сохранить"/>
            <a class="button button-regular" href="<?=HOST?>blog"> Отмена </a>
          </section>
        </form>
         
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>
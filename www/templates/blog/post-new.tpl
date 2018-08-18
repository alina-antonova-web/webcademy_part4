  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Добавить пост</h1>
          <?php require ROOT."templates/_parts/_errors.tpl"; ?>
          <form enctype="multipart/form-data" method="POST" action="<?=HOST?>blog/post-new">
          <section class="add-post">
            <div class="add-post__title">Название</div>
            <input class="form-full-width" type="text" name="title" placeholder="Введите название поста"/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Категория</div>
            <select name="tag">
              <option disabled>Выберите категорию</option>
              <?php foreach ($categories as $category): ?>
                <option value="<?=$category['id']?>"><?=$category['name']?></option>
              <?php endforeach ?>
           </select>
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
            <textarea class="form-message" name="description" id="CKeditor" placeholder="Текст поста"></textarea>
          </section>
          <section class="add-post">
            <input class="button button-save" type="submit" name="addPost" value="Сохранить"/>
            <a class="button button-regular" href="<?=HOST?>blog"> Отмена </a>
          </section>
        </form>
         
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>
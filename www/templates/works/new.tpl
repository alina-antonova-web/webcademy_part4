  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Добавить работу</h1>
          <?php require ROOT."templates/_parts/_errors.tpl"; ?>
          <form enctype="multipart/form-data" method="POST" action="<?=HOST?>work-new">
          <section class="add-post">
            <div class="add-post__title">Название</div>
            <input class="form-full-width" type="text" name="title" placeholder="Введите название поста"/>
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
              <div class="form-download__preview">
                <div class="form-download__preview__container" id="output">
                </div>
              </div>
            </div>
          </section>
          <section class="add-post">
            <div class="add-post__title">Описание</div>
            <textarea class="form-message" name="description" id="CKeditor" placeholder="Текст поста"></textarea>
          </section>
          <section class="add-post">
            <input class="button button-save" type="submit" name="addProjeckt" value="Сохранить"/>
            <a class="button button-regular" href="<?=HOST?>works"> Отмена </a>
          </section>
        </form>
         
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>

      <script src="<?php echo HOST;?>templates/assets/js/fileReader.js"></script>
  <script src="<?=HOST?>libs/ckeditor/ckeditor.js"></script>
  <script src="<?php echo HOST;?>templates/assets/js/main.js"></script>
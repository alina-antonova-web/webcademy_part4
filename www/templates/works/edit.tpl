  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Редактировать работу</h1>
          <?php require ROOT."templates/_parts/_errors.tpl"; ?>
          <form enctype="multipart/form-data" method="POST" action="<?=HOST?>work-edit?id=<?=$work['id']?>">
          <section class="add-post">
            <div class="add-post__title">Название</div>
            <input class="form-full-width" type="text" name="title" value="<?=$work['name']?>"/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Изображение</div>
            <div class="form-download">
              <div class="form-download__title">Изображение jpg или png, размером больше чем 100х100 пикселей, вес до 2Мб.</div>
              <div class="form-download__container"> 
                <label class="form-download__btn">Выбрать файл
                  <input type="file" id="file" name="photo" style="display:none;" value="<?=$work['photo']?>"/>
                </label>
                <input class="form-download__file-name" id="value" type="text"  value="<?=$work['photo']?>" disabled="disabled"/>
              </div>
              <?php if($work['photo']) { ?>
              <div class="form-download__preview">
                <div class="form-download__preview__container" id="output">
                  <div class="form-download__preview__delete"><a class="testBtn" id="deletePostImg">Удалить</a></div>
                  <div class="form-download__image-container"><img class="form-download__image" src="<?=HOST?>usercontent/portfolio/small/<?=$work['photo']?>"/></div>
                </div>
              </div>
              <div class="save-check__block" id="deletePostImgCheckBox" style="display: none;">
                <input id="save-check" type="checkbox" name="deleteImg" hidden="hidden"/>
                <label for="save-check">Картинка будет удалена</label>
              </div>
              <?php } ?>
            </div>
          </section>
          <section class="add-post">
            <div class="add-post__title">Описание</div>
            <textarea class="form-message" name="description" id="CKeditor" placeholder="Текст поста"><?=$work['description']?></textarea>
          </section>
          <section class="add-post">
            <input class="button button-save" type="submit" name="editWork" value="Сохранить"/>
            <a class="button button-regular" href="<?=HOST?>works/project?id=<?=$work['id']?>"> Отмена </a>
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
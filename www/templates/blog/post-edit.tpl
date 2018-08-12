  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Редактировать пост</h1>
          <?php require ROOT."templates/_parts/_errors.tpl"; ?>
          <form enctype="multipart/form-data" method="POST" action="<?=HOST?>blog/post-edit?id=<?=$post['id']?>">
          <section class="add-post">
            <div class="add-post__title">Название</div>
            <input class="form-full-width" type="text" name="title" value="<?=$post['title']?>"/>
          </section>
          <section class="add-post">
            <div class="add-post__title">Категория</div>
            <select name="tag">
              <option disabled>Выберите категорию</option>
              <?php foreach ($categories as $category): 
                if ($category['id'] == $post['tag'] ) { ?>
                  <option value="<?=$category['id']?>" selected><?=$category['name']?></option>
                <?php } else { ?>
                  <option value="<?=$category['id']?>"><?=$category['name']?></option>
              <?php }
              endforeach ?>
           </select>
          </section>
          <section class="add-post">
            <div class="add-post__title">Изображение</div>
            <div class="form-download">
              <div class="form-download__title">Изображение jpg или png, размером больше чем 100х100 пикселей, вес до 2Мб.</div>
              <div class="form-download__container"> 
                <label class="form-download__btn">Выбрать файл
                  <input type="file" id="file" name="photo" style="display:none;" value="<?=$post['image']?>"/>
                </label>
                <input class="form-download__file-name" id="value" type="text"  value="<?=$post['image']?>" disabled="disabled"/>
              </div>
            </div>
          </section>
          <section class="add-post">
            <div class="add-post__title">Содержание</div>
            <textarea class="form-message" name="description" placeholder="Текст поста"><?=$post['text']?></textarea>
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
  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Создать категорию</h1>
          <?php require ROOT."templates/_parts/_errors.tpl"; ?>
          <form method="POST" action="<?=HOST?>blog/category-new">
          <section class="add-post">
            <div class="add-post__title">Название</div>
            <input class="form-full-width" type="text" name="title" placeholder="Введите название категории"/>
          </section>
          <section class="add-post">
            <input class="button button-save" type="submit" name="addCategory" value="Сохранить"/>
            <a class="button button-regular" href="<?=HOST?>blog/categories"> Отмена </a>
          </section>
        </form>
         
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>
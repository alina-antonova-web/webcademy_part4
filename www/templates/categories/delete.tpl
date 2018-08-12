  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Удалить категорию</h1>
          <div class="error-message">Вы уверены, что хотите удалить категорию "<?=$category['name']?>"?</div>
          <form method="POST" action="<?=HOST?>blog/category-delete?id=<?=$category['id']?>">
            <section class="add-post">
              <input class="button button-delete" type="submit" name="deleteCategory" value="Удалить"/>
              <a class="button button-regular" href="<?=HOST?>blog/categories"> Отмена </a>
            </section>
          </form>
         
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>
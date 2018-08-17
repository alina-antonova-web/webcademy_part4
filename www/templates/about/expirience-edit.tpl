 <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h2 class="about-block-title"><?=$action_title?> место работы</h2>
          <?php require ROOT."templates/_parts/_errors.tpl"; ?>
          <form class="form-edit" action="<?=HOST?>about-expirience-edit" method="POST">
            <input type="hidden" name="work-id" value="<?=$work['id']?>"/>
            <div class="comment-user">
              <section class="add-post">
                <div class="add-post__title">Период</div>
                <input class="form-full-width" type="text" name="work-period" placeholder="Введите даты начала и окончания работы" value="<?=$work['period']?>" />
              </section>
              <section class="add-post">
                <div class="add-post__title">Название должности</div>
                <input class="form-full-width" type="text" name="work-name" placeholder="Введите название должности" value="<?=$work['name']?>"/>
              </section>
              <section class="add-post add-work">
                <div class="add-post__title">Описание работы, должностные обязанности, достигнутые результат</div>
                <textarea class="form-message" name="work-description" placeholder="Напишите интересное краткое содержательное описание"><?=$work['description']?></textarea>
                <?php if ( $action_title == "Добавить" ) { ?>
                  <input class="button button-save" type="submit" name="addWork" value="Сохранить"/>
                <?php } else { ?>
                  <input class="button button-save" type="submit" name="editWork" value="Сохранить"/>
                <?php } ?>
              </section>             
            </div>
          </form>
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>
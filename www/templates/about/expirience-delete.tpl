 <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h2 class="about-block-title"><?=$action_title?> место работы</h2>
          <?php require ROOT."templates/_parts/_errors.tpl"; ?>
          <form class="form-edit" action="<?=HOST?>about-expirience-delete" method="POST">
            <input type="hidden" name="work-id" value="<?=$job['id']?>"/>
            <div class="work-item">
              <div class="work-item__date"><?=$job['period']?></div>
              <div class="work-item-profile"><span class="work-item-profile__name"><?=$job['name']?></span></div>
              <div class="work-item__message"><?=$job['description']?></div>
            </div>
              <input class="button button-delete" type="submit" name="deleteWork" value="Удалить"/>
              <a class="button button-regular" href="<?=HOST?>about-edit"> Отмена </a>
          </form>
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>
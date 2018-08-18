 <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Редактировать - Обо Мне</h1>
          <?php require ROOT."templates/_parts/_errors.tpl"; ?>
          <form enctype="multipart/form-data" class="form-edit" action="<?=HOST?>about-edit" method="POST">
            <section class="add-post">
              <div class="add-post__title">Имя, фамилия</div>
              <input class="form-full-width" type="text" name="userName" value="<?=$about->name?>"/>
            </section>
            <section class="add-post">
              <div class="add-post__title">Фотография</div>
              <div class="form-download">
                <div class="form-download__title">Изображение jpg или png, рекомендуемый размер 205 на 205 пикселей, вес до 4Мб.</div>
                <div class="form-download__container"> 
                  <label class="form-download__btn">Выбрать файл
                    <input type="file" id="file" name="avatar" value="<?=$about->photo?>" style="display:none;"/>
                  </label>
                  <input class="form-download__file-name" id="value" type="text"  value="Файл не выбран" disabled="disabled"/>
                </div>
              </div>
              <div class="avatar avatar-big">
                <img src="<?=HOST?>/usercontent/avatar/<?=$about->photo?>" alt=""/>
              </div>
            </section>
            <section class="add-post">
              <div class="add-post__title">Информация на главной</div>
              <textarea class="form-message" name="userInfo" id="CKeditor" placeholder="Информация на главной"><?=$about->description?></textarea>
            </section>
            <div class="row-inp button-row">
              <input class="button button-save" type="submit" name="saveAbout" value="Сохранить"/>
              <a class="button button-regular" href="<?=HOST?>about"> Отмена </a>
            </div>
          </form>
        </div>
        <div class="col"></div>
      </div>
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h2 class="about-block-title" id="technologies" >Технологии</h2>
        <form class="form-edit" action="<?=HOST?>about-edit#technologies" method="POST">
          <section class="add-skills">
            <?php foreach ($frontend_technologies as $technology): ?>
            <div class="skill-field">
              <div class="add-post__title"><?=$technology->name?></div>
              <input class="form-scils" type="text" name="<?=$technology->name?>" value="<?=$technology->percent?>"/><span> &#37;</span>
            </div>
            <?php endforeach ?>
          </section>
          <section class="add-skills">
            <?php foreach ($backend_technologies as $technology): ?>
            <div class="skill-field">
              <div class="add-post__title"><?=$technology->name?></div>
              <input class="form-scils" type="text" name="<?=$technology->name?>" value="<?=$technology->percent?>"/><span> &#37;</span>
            </div>
            <?php endforeach ?>
          </section>
          <section class="add-skills">
            <?php foreach ($workflow_technologies as $technology): ?>
            <div class="skill-field">
              <div class="add-post__title"><?=$technology->name?></div>
              <input class="form-scils" type="text" name="<?=$technology->name?>" value="<?=$technology->percent?>"/><span> &#37;</span>
            </div>
            <?php endforeach ?>
          </section>
            <div class="row-inp button-row">
              <input class="button button-save" type="submit" name="saveTechnologies" value="Сохранить"/>
              <a class="button button-regular" href="<?=HOST?>about"> Отмена </a>
            </div>
          </form>
        </div>
        <div class="col"></div>
      </div>
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h2 class="about-block-title" id="works">Опыт работы</h2>
          <?php foreach ($works as $work): ?>
            <div class="work-item--admin">
              <div>
                <div>
                  <a class="button button-edit" href="<?=HOST?>about-expirience-edit?id=<?=$work['id']?>"> Редактировать </a>
                </div>
                <div>
                  <a class="button button-delete" href="<?=HOST?>about-expirience-delete?id=<?=$work['id']?>"> Удалить </a>
                </div>
              </div>
              <div class="work-item__date"><?=$work['period']?></div>
              <div class="work-item-profile"><span class="work-item-profile__name"><?=$work['name']?></span></div>
              <div class="work-item__message"><?=$work['description']?></div>
            </div>
            <?php endforeach ?>
        </div>
        <div class="col"></div>
      </div>
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h2 class="about-block-title">Добавить новое место</h2>
          <form class="form-edit" action="<?=HOST?>about-expirience-edit" method="POST">
            <div class="comment-user">
              <section class="add-post">
                <div class="add-post__title">Период</div>
                <input class="form-full-width" type="text" name="work-period" placeholder="Введите даты начала и окончания работы"/>
              </section>
              <section class="add-post">
                <div class="add-post__title">Название должности</div>
                <input class="form-full-width" type="text" name="work-name" placeholder="Введите название должности"/>
              </section>
              <section class="add-post add-work">
                <div class="add-post__title">Описание работы, должностные обязанности, достигнутые результат</div>
                <textarea class="form-message" name="work-description" id="CKeditor2" placeholder="Напишите интересное краткое содержательное описание"></textarea>
                <input class="button button-save" type="submit" name="addWork" value="Добавить"/>
              </section>             
            </div>
          </form>
        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>
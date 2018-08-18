<main class="wrap-content">
    <div class="main-content main-content--edit">
      <div class="content-title"> 
        <h1>Редактировать данные</h1>
      </div>
      <?php require ROOT."templates/_parts/_errors.tpl"; ?>
      <form class="form-edit" action="<?=HOST?>contacts-edit" method="POST">
        <div class="wrap-row">
          <div class="row-inp">
            <div class="edit-inp form-edit_wrap">Имя
              <input class="form-name edit-input" type="text" name="name" value="<?=$contacts->name?>"/>
            </div>
            <div class="form-edit_wrap">Фамилия
              <input class="form-name edit-input" type="text" name="secondname" value="<?=$contacts->secondname?>"/>
            </div>
          </div>
          <div class="row-inp">
            <div class="edit-inp form-edit_wrap">Email
              <input class="form-name edit-input" type="text" name="email" value="<?=$contacts->email?>"/>
            </div>
            <div class="form-edit_wrap">Skype
              <input class="form-name edit-input" type="text" name="skype" value="<?=$contacts->skype?>"/>
            </div>
          </div>
          <div class="row-inp">
            <div class="row-wrap">
              <div class="edit-inp form-edit_wrap"><span>Вконтакте</span>
                <input class="form-name edit-input" type="text" name="vk" value="<?=$contacts->vk?>"/>
              </div>
              <div class="edit-inp form-edit_wrap fix-margin"><span>Facebook</span>
                <input class="form-name edit-input" type="text" name="fb" value="<?=$contacts->fb?>"/>
              </div>
            </div>
            <div class="row-wrap">
              <div class="edit-inp form-edit_wrap"><span>GitHub</span>
                <input class="form-name edit-input" type="text" name="github" value="<?=$contacts->github?>"/>
              </div>
            </div>
          </div>
          <div class="row-inp">
            <div class="edit-inp form-edit_wrap">Телефон
              <input class="form-name edit-input" type="text" name="phone" value="<?=$contacts->phone?>"/>
            </div>
            <div class="edit-inp form-edit_wrap fix-margin">Адрес
              <textarea class="form-message" name="address" cols="30" rows="10"><?=$contacts->address?></textarea>
            </div>

            <div class="row-wrap">
              
              <div class="edit-inp form-edit_wrap"><span>Координаты</span>
                <div class="row-inp">
                  <span>Широта</span>
                  <input class="form-name edit-input" type="text" name="lat" value="<?=$contacts->lat?>"/>
                </div>
                <div class="row-inp">
                  <span>Долгота</span>
                  <input class="form-name edit-input" type="text" name="lng" value="<?=$contacts->lng?>"/>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row-inp button-row">
          <input class="button button-save" type="submit" name="saveContacts" value="Сохранить"/>
          <a class="button button-regular" href="<?=HOST?>contacts"> Отмена </a>
        </div>
      </form>
    </div>
  </main>
  <div class="map-wrapp">
    <div class="map-conteiner" id="map"></div>
  </div>
  <script src="<?=HOST?>templates/assets/js/googleMap.js"></script>
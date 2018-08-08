<div class="container">
    <div class="row resume-wrap">
      <div class="col-md-4 col-lg-3 resume-avatar">
        <div class="avatar avatar-big"><img src="<?=HOST?>/usercontent/avatar/<?=$currentUser->photo?>" alt=""/></div>
      </div>
      <div class="col-md-8 col-lg-9 resume-content">
        <div class="resume-content--text">
          <h1>Профиль</h1>
          <section class="add-post">
            <div class="add-post__title">Имя, Фамилия</div>
            <div><?=$currentUser->name?> <?=$currentUser->secondname?></div>
          </section>
          <section class="add-post">
            <div class="add-post__title">Email</div>
            <div><?=$currentUser->email?></div>
          </section>
          <section class="add-post">
            <div class="add-post__title">Страна, Город</div>
            <div><?=$currentUser->country?>, <?=$currentUser->city?></div>
          </section>
        </div>
        <div class="resume-content--button">
          <a class="button button-regular" href="<?=HOST?>profile-edit"> Редактировать </a>
        </div>
      </div>
    </div>
  </div>

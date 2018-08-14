<div class="menu-admin">
  <div class="tab-profile">
    <div class="avatar avatar-small"><img src="<?php echo HOST;?>templates/assets/img/avatar-img/photo-small.jpg"/></div>
    <div class="tab-profile__name"><?=$currentUser->name?> <?=$currentUser->secondname?></div>
    <a class="btn btn--admin" href="<?=HOST?>profile"><?=$role?></a>

  </div>
  <div class="tab-wrap">
    <input type="radio" name="tabs" id="tab1" checked="checked"/>
    <div class="tab-label-content" id="tab1-content">
      <label for="tab1">Страницы</label>
      <nav class="header-user__nav">
        <ul class="menu">
          <li><a href="<?=HOST?>">Главная</a></li>
          <li><a href="<?=HOST?>about">Обо мне</a></li>
          <li><a href="<?=HOST?>works">Работы</a></li>
          <li><a href="<?=HOST?>blog">Блог</a></li>
          <li><a href="<?=HOST?>contacts">Контакты</a></li>
        </ul>
      </nav>
    </div>

    <input type="radio" name="tabs" id="tab2"/>            
    <div class="tab-label-content" id="tab2-content">
      <label for="tab2">Админка</label>
      <nav Class="menu-admin">
        <ul>
          <li><i class="fas fa-plus-circle"></i><a href="<?=HOST?>blog/post-new">Пост</a></li>
          <li><i class="fas fa-folder"></i><a href="<?=HOST?>blog/categories">Категории</a></li>
          <li><i class="fas fa-edit"></i><a href="<?=HOST?>about-edit">Обо мне</a></li>
          <li><i class="fas fa-plus-circle"></i><a href="<?=HOST?>works-edit">Работа</a></li>
          <li><i class="fas fa-edit"></i><a href="<?=HOST?>contacts-edit">Контакты</a></li>
          <li><i class="fas fa-envelope"></i><a href="<?=HOST?>messages">Сообщения</a></li>
          <li><i class="fas fa-sign-out-alt"></i><a href="<?=HOST?>logout">Выход</a></li>
        </ul>
      </nav>
    </div>


  </div>
</div>
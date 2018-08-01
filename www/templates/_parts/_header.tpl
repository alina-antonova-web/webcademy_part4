  <?php 
    if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 && $_SESSION['role'] == "admin") {
      include ROOT."templates/_parts/_admin-panel.tpl"; 
  } 
  ?>

  <div class="header-user">
    <div class="header-user__content">
      <div class="header-user__mobile-bar" id="navigation-toggle">
        <div class="header-user__mobile-toggle">
          <svg class="icon icon-nav nav-mod">
            <use xlink:href="<?php echo HOST;?>templates/assets/img/sprite.svg#nav"></use>
          </svg>
        </div>
        <div class="header-user__mobile-close">
          <svg class="icon icon-close close-mod">
            <use xlink:href="<?php echo HOST;?>templates/assets/img/sprite.svg#close"></use>
          </svg>
        </div>
        <p>Открыть навигацию</p>
      </div>
      <div class="header-user__logo-brand">
        <div class="header-user__logo"><a href="index.html">
            <svg class="icon icon-plane plane-mod">
              <use xlink:href="<?php echo HOST;?>templates/assets/img/sprite.svg#plane"></use>
            </svg></a></div><a class="header-user__brand" href="index.html">
          <div class="header-user__brandname">
            <h1>Digital Lyfestyle</h1>
          </div>
          <div class="header-user__brand-desc">
            <p>Сайт IT специалиста</p>
          </div></a>
      </div>

      <?php 
        if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 && $_SESSION['role'] == "user") {
          $currentUser = $_SESSION['logged_user'];
          include ROOT."templates/_parts/_user-box.tpl";  
        }

        if (!isset($_SESSION['login'])) {
      ?>
        <div class="header-user__login" id="navigation-login">
          <div class="header-user__login-box">
            <div class="header-user__signup-link">
                <a href="<?=HOST?>registration">Регистрация</a>
            </div>
            <div class="header-user__login-link">
                <a href="<?=HOST?>login">Вход</a>
            </div>
          </div>
        </div>
      <?php
        }
      ?>
     

      <div class="header-user__nav-box" id="navigation-menu">
        <?php 
          if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1) {
            include ROOT."templates/_parts/_menu-logged-user.tpl";  
          } else {
        ?>
          <nav Class="header-user__nav">
          <ul>
            <li><a href="/">Главная</a></li>
            <li><a href="/about.html">Обо мне</a></li>
            <li><a href="/works.html">Работы</a></li>
            <li><a href="/blog.html">Блог</a></li>
            <li><a href="/contact.html">Контакты</a></li>
          </ul>
        </nav>
        <?php } ?>

      </div>
    </div>
  </div>
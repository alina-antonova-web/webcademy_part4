  <?php 
    if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 && $_SESSION['role'] == "admin") {
      $currentUser = $_SESSION['logged_user'];
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

      <?php 
        
        // LOGO
        include ROOT."templates/_parts/_logo.tpl";

        // Box for logged user
        if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 && $_SESSION['role'] == "user") {
          $currentUser = $_SESSION['logged_user'];
          include ROOT."templates/_parts/_header-user-logged-in.tpl";  
        }

        // Box for guest
        if (!isset($_SESSION['login'])) {
          include ROOT."templates/_parts/_header-user-login.tpl";
        } 

      ?>
     

      <div class="header-user__nav-box" id="navigation-menu">
        <?php 
          if ( isset($_SESSION['logged_user']) && $_SESSION['login'] == 1) {
            if ($_SESSION['role'] == "user") {
              $role = 'Пользователь';
            } else {
              $role = 'Администратор';
            }
            include ROOT."templates/_parts/_menu-logged-user.tpl";  
          } else {
            include ROOT."templates/_parts/_menu-guest.tpl";      
          } 
        ?>
      </div>

    </div>
  </div>
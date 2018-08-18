 <div class="container">
    <div class="row resume-wrap">
      <div class="col-md-4 col-lg-3 resume-avatar">
        <div class="avatar avatar-big">
          <?php 
            if ($about->photo != "" ) {
              $photo_src = HOST ."/usercontent/avatar/". $about->photo; 
            } else {
              $photo_src = HOST ."/templates/assets/img/placeholders/user-avatar-placeholder-big.jpg";               
            }
          ?>
          <img src="<?=$photo_src?>" alt=""/>
        </div>
      </div>
      <div class="col-md-8 col-lg-9 resume-content">
        <div class="resume-content--text">
          <h1><?=$about->name?></h1>

          <?=$about->description?>
        </div>
        <div class="resume-content--button"><a class="button button-regular" href="<?=HOST?>about"> Подробнее </a> </div>
      </div>
    </div>
  </div>
  <div class="line"></div>
  <div class="container">
    <div class="portfolio-title">
      <h1>Новые <a class="cards-link" href="<?=HOST?>works">работы</a></h1>
    </div>
    <div class="row portfolio-works">
      <?php foreach ($works as $work): ?>

        <?php include (ROOT."templates/works/work-card.tpl"); ?>

      <?php endforeach ?>
    </div>
  </div>
  <div class="container">
    <div class="blog-title">
      <h1>Новые записи в <a class="cards-link" href="<?=HOST?>blog">блоге</a></h1>
    </div>
    <div class="row blog-cards">
      <?php foreach ($blogPosts as $post): ?>

        <?php include (ROOT."templates/blog/blog-card.tpl"); ?>

      <?php endforeach ?>

    </div>
  </div>
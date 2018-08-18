
  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <?php if (isAdmin()) { ?>
            <a class="button button-edit" href="<?=HOST?>work-edit?id=<?=$work['id']?>"> Редактировать </a>
          <?php } ?>
          <h1 class="full-post__title"><?=$work['name']?></h1>
          <span class="full-post__date">
            <?php echo rus_date("j F Y", strtotime( $work['date'] ) ); ?>       
          </span>
          <article>
            <?php if ($work['photo']) { ?>
              <img class="full-post__img" src="<?=HOST?>usercontent/portfolio/<?=$work['photo']?>" />
            <?php } ?>
            <?=$work['description']?>
          </article>
          <div class="full-post__next-prew">
            <?php if (($work['id'] - 1) > 0) { ?>
              <a class="button button-regular" href="<?=HOST?>works/project?id=<?php echo $work['id'] - 1;?>"> <span class="button__small-fa-icon"><i class="fas fa-arrow-left"></i></span> Назад  </a>
            <?php } ?>

            <?php if (($work['id'] + 1) > 0) { ?>
              <a class="button button-regular" href="<?=HOST?>works/project?id=<?php echo $work['id'] + 1;?>"> Вперед  <span class="button__small-fa-icon"><i class="fas fa-arrow-right"></i></span></a>
            <?php } ?>
          </div>

        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>
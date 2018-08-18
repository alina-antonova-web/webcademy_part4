<div class="col-md-6 col-xl-4">
<div class="card card-portfolio">
	<?php if ($work['photo']) { ?>
  		<img class="card__img card-portfolio__img" src="<?=HOST?>usercontent/portfolio/small/<?=$work['photo']?>"/>
    <?php } else { ?>
  		<img class="card__img card-portfolio__img" src="<?=HOST?>usercontent/blog/small/placeholder_320x140-1.png"/>
    <?php } ?>
  <h2 class="card__title"><?=$work['name']?></h2>
  <a class="button button-regular" href="<?=HOST?>works/project?id=<?=$work['id']?>"> Смотреть кейс </a>
</div>
</div>
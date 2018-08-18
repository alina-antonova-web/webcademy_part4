<div class="col-md-6 col-xl-4">
  <div class="card card-post">
  	<?php if ($post['image']) { ?>
  		<img class="card__img card-post__img" src="<?=HOST?>usercontent/blog/small/<?=$post['image']?>"/>
    <?php } else { ?>
  		<img class="card__img card-post__img" src="<?=HOST?>usercontent/blog/small/placeholder_320x140-1.png"/>
    <?php } ?>
    <h2 class="card__title"><?=$post["title"]?></h2><a class="button button-regular" href="<?=HOST?>blog/post?id=<?=$post['id']?>"> Читать </a>
  </div>
</div>
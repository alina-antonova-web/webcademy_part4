
  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <?php if (isAdmin()) { ?>
            <a class="button button-edit" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>"> Редактировать </a>
          <?php } ?>
          <h1 class="full-post__title"><?=$post['title']?></h1>
          <span class="full-post__author"><?=$post['name'] .' '. $post['secondname']?></span>
          <a class="full-post__link" href="<?=HOST?>blog?tag=<?=$post['tag']?>"><?=$post['catName']?></a>
          <span class="full-post__date">
            <?php echo rus_date("j F Y", strtotime( $post['date'] ) ); ?>       
          </span>
          <?php if (count($comments)) { ?>
            <a class="full-post__link" href="#comments"><?=count($comments)?> комментари<?=getTermination(count($comments)) ?> </a>
          <?php } ?>
          <article>
            <?php if ($post['image']) { ?>
              <img class="full-post__img" src="<?=HOST?>usercontent/blog/<?=$post['image']?>" />
            <?php } ?>
            <?=$post['text']?>
          </article>
          <div class="full-post__next-prew">
            <?php if (($post['id'] - 1) > 0) { ?>
              <a class="button button-regular" href="<?=HOST?>blog/post?id=<?php echo $post['id'] - 1;?>"> <span class="button__small-fa-icon"><i class="fas fa-arrow-left"></i></span> Назад  </a>
            <?php } ?>

            <?php if (($post['id'] + 1) > 0) { ?>
              <a class="button button-regular" href="<?=HOST?>blog/post?id=<?php echo $post['id'] + 1;?>"> Вперед  <span class="button__small-fa-icon"><i class="fas fa-arrow-right"></i></span></a>
            <?php } ?>
          </div>


          <?php if (count($comments)) { ?>
            <h2 id="comments"><?=count($comments)?> комментари<?=getTermination(count($comments)) ?></h2>
            <?php foreach ($comments as $comment): ?>

              <?php include "comment-card.tpl"; ?>

            <?php endforeach ?>
          <?php } ?>
          
          <?php if (isLoggedIn()) { ?>
            <div class="comment-post__title">Оставить комментарий</div>
            <div class="comment-post">
              <div class="avatar avatar-small"><img src="<?=HOST?>/usercontent/avatar/small/<?=$currentUser->photo?>" alt=""/></div>
              <div class="comment-post__author"><?=$currentUser->name?> <?=$currentUser->secondname?></div>
              <div class="comment-post__form">
                <form  method="POST" action="<?=HOST?>blog/post?id=<?=$post['id']?>">
                  <?php require ROOT."templates/_parts/_errors.tpl"; ?>                
                  <textarea class="form-message" name="message" placeholder="Присоединиться к обсуждению..."></textarea>
                  <input class="button button-regular" type="submit" name="addComment" value="Опубликовать"/>
                </form>
              </div>
            </div>
          <?php } else { ?>
            <div class="no-auth">
              <div class="no-auth__title"> <a href="<?=HOST?>login">Войдите</a> или <a href="<?=HOST?>registration">зарегистрируйтесь</a><br>чтобы оставить комментарий </div>
            </div>

          <?php } ?>

        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>
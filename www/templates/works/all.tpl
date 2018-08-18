<main>
	<div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col">
          <?php if (isAdmin()) { ?>
            <a class="button button-edit" href="<?=HOST?>work-new"> Добавить работу </a>
          <?php } ?>
          <h1>Портфолио</h1>
        </div>
      </div>
      <div class="row">
        
        <?php foreach ($works as $work): ?>

        	<?php include "work-card.tpl"; ?>

        <?php endforeach ?>
        
      </div>
    </div>
  </div>
</main>
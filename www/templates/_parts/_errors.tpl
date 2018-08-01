<?php foreach ($errors as $error) {
  if ( count($error) == 1 ) { ?>
      <div class="error-message"><?=$error['title']?></div>
  <?php } else if (count($error) == 2) { ?>
      <div class="block-error block-error__booked">
        <div class="error-message error-message__booked"><?=$error['title']?></div>
        <div class="description-error"><?=$error['description']?></div>
      </div>
<?php }
} ?>


<div class="error-massages" id="error-massages">
  
</div>
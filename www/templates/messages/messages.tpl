<main>
	<div class="section-block">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2>Сообщения от пользователей</h2>
        </div>
      </div>
      <div class="row">
      	<div class="col-12">

        
      		
	        <?php foreach ($messages as $message): ?>

            <div class="comment-user mb-20"><a class="button button-delete" href="<?=HOST?>message-delete?id=<?=$message->id?>"> Удалить </a>
              <div class="comment-user__date">
                <?php echo rus_date("j F Y", strtotime( $message['date'] ) ); ?>
              </div>
              <div class="comment-user-profile"><span class="comment-user-profile__name"><?=$message->name?></span>
                <a class="comment-user-profile__email" href="mailto:<?=$message->email?>"><?=$message->email?></a></div>                
              <div class="comment-user__message"><?=$message->text?></div>
              <?php if ($message->file != "") { ?>
                <div class="comment-user__file">Прикрепленные файлы: 
                  <a target="_blank" href="<?=HOST?>usercontent/uploadfiles/<?=$message->file?>">
                    
                    <?php
                      if ($message->file_name == "") {
                        echo $message->file;
                      } else {
                        echo $message->file_name;
                      }
                    

                    ?>
                    
                  </a>
                </div>
              <?php } ?>
            </div>

	        <?php endforeach ?>
        </div>
      </div>
    </div>
  </div>
</main>
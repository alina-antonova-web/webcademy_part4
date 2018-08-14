  <div class="full-post">
    <div class="container">
      <div class="row">
        <div class="col"></div>
        <div class="col-10">
          <h1>Удалить сообщение</h1>
          <div class="error-message">Вы уверены, что хотите удалить сообщение?</div>

          <div class="comment-user mb-20">
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

          <form method="POST" action="<?=HOST?>message-delete?id=<?=$message['id']?>">
            <section class="add-post">
              <input class="button button-delete" type="submit" name="deleteMessage" value="Удалить"/>
              <a class="button button-regular" href="<?=HOST?>messages"> Отмена </a>
            </section>
          </form>

        </div>
        <div class="col"></div>
      </div>
    </div>
  </div>
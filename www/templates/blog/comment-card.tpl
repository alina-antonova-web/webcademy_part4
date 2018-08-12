<div class="comment">
	<div class="avatar avatar-small comment__avatar"><img src="<?=HOST?>/usercontent/avatar/small/<?=$comment['photo']?>" alt="<?=$comment['name'] . ' ' . $comment['secondname'] ?>"/></div>
	<div class="comment__info__user_date">
	  <div class="comment__user_name"><?=$comment['name'] . ' ' . $comment['secondname'] ?></div>
	  <div class="time_container"><i class="far fa-clock"></i>
	    <div class="comment__date">
	    	<?php echo rus_date("j F Y года в H:i", strtotime( $comment['date'] ) ); ?>	    		
	    </div>
	  </div>
	</div>
	<div class="comment__text"><?=$comment['text']?></div>
</div>
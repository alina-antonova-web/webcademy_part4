 <div class="container about-resume">
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
          
          <?php if (isAdmin()) { ?>
	          <div class="about-button">
	          	<a class="button button-edit" href="<?=HOST?>about-edit"> Редактировать </a>
	          </div>
          <?php } ?>
        </div>
      </div>
    </div>
  </div>
  <div class="about-skills">
    <div class="container">
      <div class="row">
        <div class="col-md-4 col-lg-3"></div>
        <div class="col-md-8 col-lg-9">
          <div class="header_skills">Технологии
            <p>Которые использую в работе</p>
          </div>
        </div>
      </div>
      <div class="row row--skills">
        <div class="col-md-4 col-lg-3 d-flex">
          <div class="skills_title justify-content-center align-self-center"> Frontend</div>
        </div>
        <div class="col-md-8 col-lg-9">
          <div class="about-skills-conteiner">
            <div class="skills_frontend" id="skills_frontend">
            	<?php foreach ($frontend_technologies as $technology): ?>
            		<div class="circle" id="circles-<?=$technology->name?>" data-name="<?=$technology->name?>" data-procent="<?=$technology->percent?>"></div>
	            <?php endforeach ?>
            </div>
          </div>
        </div>
      </div>
      <div class="row row--skills">
        <div class="col-md-4 col-lg-3 d-flex">
          <div class="skills_title justify-content-center align-self-center"> Backend</div>
        </div>
        <div class="col-md-8 col-lg-9">
          <div class="about-skills-conteiner">
            <div class="skills_backend" id="skills_backend">
            	<?php foreach ($backend_technologies as $technology): ?>
            		<div class="circle" id="circles-<?=$technology->name?>" data-name="<?=$technology->name?>" data-procent="<?=$technology->percent?>"></div>
	            <?php endforeach ?>
            </div>
          </div>
        </div>
      </div>
      <div class="row row--skills">
        <div class="col-md-4 col-lg-3 d-flex">
          <div class="skills_title justify-content-center align-self-center"> Workflow</div>
        </div>
        <div class="col-md-8 col-lg-9">
          <div class="about-skills-conteiner">
            <div class="skills_workflow" id="skills_workflow">
            	<?php foreach ($workflow_technologies as $technology): ?>
            		<div class="circle" id="circles-<?=$technology->name?>" data-name="<?=$technology->name?>" data-procent="<?=$technology->percent?>"></div>
	            <?php endforeach ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="container work-experience">
    <div class="row">
      <div class="col-md-4 col-lg-3"></div>
      <div class="col-md-8 col-lg-9">
        <h1>Опыт работы</h1>

        <?php foreach ($works as $work): ?>
          <div class="work-item">
            <div class="work-item__date"><?=$work['period']?></div>
            <div class="work-item-profile"><span class="work-item-profile__name"><?=$work['name']?></span></div>
            <div class="work-item__message"><?=$work['description']?></div>
          </div>
        <?php endforeach ?>

        
      </div>
    </div>
  </div>
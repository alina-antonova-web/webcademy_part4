<main>
	<div class="section-block">
    <div class="container">
      <div class="row">
        <div class="col">
          <?php if (isAdmin()) { ?>
            <a class="button button-regular float-right" href="<?=HOST?>blog/category-new">Создать категорию</a>
          <?php } ?>
          <h1>Категории</h1>
        </div>
      </div>
      <div class="row">
      	<table class="table">
      		<thead>
      			<tr>
      				<th scope="col">id</th>
      				<th scope="col">Название</th>
      				<th scope="col">Редактировать</th>
      				<th scope="col">Удалить</th>
      			</tr>
      		</thead>
      		<tbody>
      		
	        <?php foreach ($categories as $category): ?>

		        <tr>
    				  <th scope="row"><?=$category['id']?></th>
    				  <td><a class="full-post__link" href="<?=HOST?>blog?tag=<?=$category['id']?>"><?=$category['name']?></a>
              </td>
    				  <td>
    				  	<a href="<?=HOST?>blog/category-edit?id=<?=$category['id']?>"  class="button button-edit"> Редактировать </a>
    				  </td>
    				  <td>
    				  	<a href="<?=HOST?>blog/category-delete?id=<?=$category['id']?>" class="button button-delete"> Удалить </a>
    				  </td>
    				</tr>

	        <?php endforeach ?>
        	</tbody>
      	</table>
      </div>
    </div>
  </div>
</main>
<?php
  $page_title = 'Histórico';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(2);
  $acompanhamento = join_product_table_historico();
?>
<?php include_once('layouts/header.php'); ?>
  <div class="row">
     <div class="col-md-12">
       <?php echo display_msg($msg); ?>
     </div>
    <div class="col-md-12">
      <div class="panel panel-default">        
        <div class="panel-body">
          <table class="table table-bordered">
            <thead>
            <input type="text" style="" id="search" class="form-control " placeholder="Busca por usuário"/><br>  
              <tr>
                <th class="text-center" style="width: 50px;">#</th>
                <th> Status</th>
                <th> Item </th>
                <th class="text-center" style="width: 10%;"> Categoria </th>
                <th class="text-center" style="width: 10%;"> Localização </th>
                <th class="text-center" style="width: 10%;"> Quantidade </th>
                <th class="text-center" style="width: 10%;"> Usuário </th>                
                <th class="text-center" style="width: 10%;"> Data</th>
                <th class="text-center" style="width: 10%;"> Descrição</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($acompanhamento as $acompanhamento):?>
              <tr>
                <td class="text-center"><?php echo count_id();?></td>                
                <td> <?php echo remove_junk($acompanhamento['status']); ?></td>
                <td class="text-center"> <?php echo remove_junk($acompanhamento['name']); ?></td>
                <td class="text-center"> <?php echo remove_junk($acompanhamento['nome']); ?></td>
                <td class="text-center"> <?php echo remove_junk($acompanhamento['localizacao']); ?></td>
                <td class="text-center"> <?php echo remove_junk($acompanhamento['quantidade']); ?></td>                 
                <td id="user" class="text-center"> <?php echo remove_junk($acompanhamento['user']); ?></td>                
                <td class="text-center"> <?php echo remove_junk($acompanhamento['data']); ?></td>   
                <td class="text-center"> <?php echo remove_junk($acompanhamento['descricao']); ?></td>              
              </tr>
             <?php endforeach; ?>
            </tbody>
          </tabel>
        </div>
      </div>
    </div>
  </div>
  <?php include_once('layouts/footer.php'); ?>

<script>

$('#search').keyup(function() {
  var regex = new RegExp($('#search').val(), "i");
  var rows = $('table tr:gt(0)');
  rows.each(function (index) {
    title = $(this).children("#user").html()
    if (title.search(regex) != -1) {
      $(this).show();
    } else {
      $(this).hide();
    }
  });
});
</script>
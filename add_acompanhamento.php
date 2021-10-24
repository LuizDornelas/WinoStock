<?php 
require_once('includes/load.php');
$user = current_user(); 
?>
<?php
  $page_title = 'Adicionar - Acompanhamento';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
  page_require_level(2);
  $all_products = find_all_name('products'); 
  $categorias =  find_all_nome('categorias');
  $localizacao =  find_all_localizacao('localizacao');
?>
<?php
 if(isset($_POST['add_acompanhamento'])){
   $req_fields = array('status','item', 'categoria','quantidade', 'localizacao','descricao' );
   validate_fields($req_fields);
   if(empty($errors)){
     $status  = remove_junk($db->escape($_POST['status']));
     $item   = remove_junk($db->escape($_POST['item']));
     $categoria   = remove_junk($db->escape($_POST['categoria']));
     $localizacao   = remove_junk($db->escape($_POST['localizacao']));
     $quantidade   = remove_junk($db->escape($_POST['quantidade']));
     $descricao   = remove_junk($db->escape($_POST['descricao']));        
     date_default_timezone_set('America/Sao_Paulo');
     $date    = make_date();
     $user = $user['username'];

     $items = find_by_id('products',$item);
     $qnt_item = $items['quantity'];     

      if($status == "Entrada"){
        update_product_qty_plus($quantidade,$item);
      } else{
        if($quantidade > $qnt_item){
          $session->msg('d',"Quantidade maior que estoque! ");
          redirect('acompanhamento.php', false);
         }
        update_product_qty_minus($quantidade,$item);
      }
      $query  = "INSERT INTO acompanhamento (";
      $query .=" status,item,quantidade,data,user,categoria,localizacao,descricao";
      $query .=") VALUES (";
      $query .=" '{$status}', '{$item}', '{$quantidade}', '{$date}', '{$user}', '{$categoria}', '{$localizacao}','{$descricao}'";
      $query .=")";   
      if($db->query($query)){
        $session->msg('s',"Acompanhamento adicionado ");
        redirect('acompanhamento.php', false);
      } else {
        $session->msg('d',' Erro ao adicionar!');
        redirect('acompanhamento.php', false);
      }  
  } else{
     $session->msg("d", $errors);
     redirect('acompanhamento.php',false);
   }

 }

?>
<?php include_once('layouts/header.php'); ?>
<div class="row">
  <div class="col-md-12">
    <?php echo display_msg($msg); ?>
  </div>
</div>
  <div class="row">
  <div class="col-md-8">
      <div class="panel panel-default">
        <div class="panel-heading">
          <strong>
            <span class="glyphicon glyphicon-th"></span>
            <span>Adicionar acompanhamento</span>            
         </strong>
        </div>
        <div class="panel-body">
         <div class="col-md-12">
          <form method="post" action="add_acompanhamento.php" class="clearfix">              
              
          <div class="form-group">
                <div class="row">
                  <div class="col-md-6">
                    <select class="form-control" name="status">
                      <option value="Entrada">Entrada</option>
                      <option value="Saida">Saída</option>
                    </select>
                  </div> 
                  <div class="col-md-6">
                    <select class="form-control" name="item">
                      <option value="">Selecione o item</option>
                    <?php  foreach ($all_products as $prod): ?>
                      <option value="<?php echo (int)$prod['id'] ?>">
                        <?php echo $prod['name'] ?></option>
                    <?php endforeach; ?>
                    </select>
                  </div>                     
                </div>
              </div>                                

              <div class="form-group">
               <div class="row">
               <div class="col-md-6">
                    <select class="form-control" name="categoria">
                      <option value="">Selecione a categoria</option>
                    <?php  foreach ($categorias as $cat): ?>
                      <option value="<?php echo (int)$cat['id'] ?>">
                        <?php echo $cat['nome'] ?></option>
                    <?php endforeach; ?>
                    </select>
                  </div>
                 <div class="col-md-6">
                   <div class="input-group">
                     <span class="input-group-addon">
                      <i class="glyphicon glyphicon-equalizer"></i>
                     </span>
                     <input type="number" id="number" min="0" class="form-control" name="quantidade" placeholder="Quantidade">
                  </div>
                 </div>                                   
               </div>
              </div>

              <div class="form-group">
               <div class="row">
               <div class="col-md-6">
                    <select class="form-control" name="localizacao">
                      <option value="">Selecione a localização</option>
                    <?php  foreach ($localizacao as $loc): ?>
                      <option value="<?php echo (int)$loc['id'] ?>">
                        <?php echo $loc['localizacao'] ?></option>
                    <?php endforeach; ?>
                    </select>
                  </div>
                 <div class="col-md-6">                 
                 <textarea style=height:35px; placeholder="Descrição" maxlength="25" name="descricao" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>                   
                 </div>                                   
               </div>
              </div>                      
              <button type="submit" name="add_acompanhamento" class="btn btn-danger">Adicionar acompanhamento</button>
          </form>
         </div>
        </div>
      </div>
    </div>
  </div>

<?php include_once('layouts/footer.php'); ?>

<script>
    // Select your input element.
var number = document.getElementById('number');

// Listen for input event on numInput.
number.onkeydown = function(e) {
    if(!((e.keyCode > 95 && e.keyCode < 106)
      || (e.keyCode > 47 && e.keyCode < 58) 
      || e.keyCode == 8)) {
        return false;
    }
}
</script>
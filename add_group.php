<?php
  $page_title = 'Adicionar - Grupo';
  require_once('includes/load.php');
  // Checkin What level user has permission to view this page
   page_require_level(2);
?>
<?php
  if(isset($_POST['add'])){

   $req_fields = array('group-name','group-level');
   validate_fields($req_fields);

   if(find_by_groupName($_POST['group-name']) === false ){
     $session->msg('d','<b>Sorry!</b> Entered Group Name already in database!');
     redirect('add_group.php', false);
   }elseif(find_by_groupLevel($_POST['group-level']) === false) {
     $session->msg('d','<b>Sorry!</b> Entered Group Level already in database!');
     redirect('add_group.php', false);
   }
   if(empty($errors)){
           $name = remove_junk($db->escape($_POST['group-name']));
          $level = remove_junk($db->escape($_POST['group-level']));
         $status = remove_junk($db->escape($_POST['status']));

        $query  = "INSERT INTO user_groups (";
        $query .="group_name,group_level,group_status";
        $query .=") VALUES (";
        $query .=" '{$name}', '{$level}','{$status}'";
        $query .=")";
        if($db->query($query)){
          //sucess
          $session->msg('s',"Grupo criado! ");
          redirect('add_group.php', false);
        } else {
          //failed
          $session->msg('d',' Falha ao criar o grupo');
          redirect('add_group.php', false);
        }
   } else {
     $session->msg("d", $errors);
      redirect('add_group.php',false);
   }
 }
?>
<?php include_once('layouts/header.php'); ?>
<div class="login-page">
    <div class="text-center">
       <h3>Adicionar grupo</h3>
     </div>
     <?php echo display_msg($msg); ?>
      <form method="post" action="add_group.php" class="clearfix">
        <div class="form-group">
              <label for="name" class="control-label">Nome</label>
              <input type="name" class="form-control" name="group-name">
        </div>
        <div class="form-group">
              <label for="level" class="control-label">Nível</label>
              <input type="number" id="number" min="0" max="2" class="form-control" name="group-level">
        </div>
        <div class="form-group">
          <label for="status">Status</label>
            <select class="form-control" name="status">
              <option value="1">Ativo</option>
              <option value="0">Desativado</option>
            </select>
        </div>
        <div class="form-group clearfix">
                <button type="submit" name="add" class="btn btn-info">Adicionar</button>
        </div>
    </form>
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
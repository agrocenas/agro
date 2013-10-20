<?php use Phalcon\Tag as Tag ?>

<?php echo Tag::form(array("posts/create", "autocomplete" => "on")) ?>

<ul class="pager">
    <li class="previous pull-left">
        <?php echo Tag::linkTo(array("posts", "&larr; Voltar")) ?>
    </li>
    <li class="pull-right">
        <?php echo Tag::submitButton(array("Guardar", "class" => "btn btn-success")) ?>
    </li>
</ul>

<?php echo $this->getContent() ?>

<div class="left scaffold">
    <h2>Postar</h2>

     <div class="clearfix">
        <label for="post_user">Por</label>
        <?php echo Tag::textField(array("post_user", "size" => 24, "maxlength" => 70)) ?>
    </div>
   
     <div class="clearfix">
        <label for="post_date">Em</label>
        <?php echo Tag::dateField(array("post_date", DateTime::RFC3339 )) ?>
    </div>
    
    <div class="clearfix">
        <label for="product">Produto</label>
   <?php echo Tag::select(array("product", $products, "using" => array("id", "name"), "useDummy" => true)) ?>
    </div>
    <!-- TODO: style to textarea -->
    <div class="clearfix">
        <label for="description">Descricao</label>
        <?php echo Tag::textArea(array("description", "maxlength" => 256)) ?>
    </div>

    <div class="clearfix">
        <label for="active">Disponivel</label>
        <?php echo Tag::selectStatic(array("active", array('Y'=>'Y','N'=>'N'), "useDummy" => true)) ?>
    </div>

</div>
</form>

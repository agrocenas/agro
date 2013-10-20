<?php use Phalcon\Tag as Tag ?>

<?php echo $this->getContent() ?>

<div align="right">
    <?php echo Tag::linkTo(array("posts/new", "Postar", "class" => "btn btn-primary")) ?>
</div>

<?php echo Tag::form(array("posts/search", "autocomplete" => "on")) ?>

<div class="form-horizontal">

    <h2>Publicações</h2>

    
    
    <div class="control-group">
        <label for="id">Id</label>
        <?php echo Tag::textField(array("id", "size" => 10, "maxlength" => 10, "type" => "number")) ?>
    </div>
    <div class="control-group">
        <label for="post_user">Publicado por</label>
        <?php echo Tag::textField(array("post_user", "size" => 20, "maxlength" => 50, "type" => "string")) ?>
    </div>
    <div class="control-group">
        <label for="post_date">Publicado em</label>
        <?php echo Tag::dateField(array("post_date", "size" => 10, "maxlength" => 10, "type" => "dateTime")) ?>
    </div>
    <div class="control-group">
        <label for="product">Produto</label>
        <?php echo Tag::select(array("product", $products, "using" => array("id", "name"), "useDummy" => true)) ?>
    </div>
    <div class="control-group">
        <label for="description">Descrição</label>
        <?php echo Tag::textField(array("description", "size" => 30, "maxlength" => 50, "type" => "string")) ?>
    </div>
    <div class="">
        <label for="active">Disponivel</label>
        <?php echo Tag::selectStatic(array("active", array('Y'=>'Y','N'=>'N',), "useDummy" => true)) ?>
    </div>
    <br>
    <div class="left clearfix">
        <?php echo Tag::submitButton(array("Search", "class" => "btn btn-primary")) ?>
    </div>

</div>

</form>

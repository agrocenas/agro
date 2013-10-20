<?php use Phalcon\Tag as Tag ?>

<?php echo Tag::form("producttypes/create") ?>

<ul class="pager">
    <li class="previous pull-left">
        <?php echo Tag::linkTo(array("producttypes", "&larr; Voltar")) ?>
    </li>
    <li class="pull-right">
        <?php echo Tag::submitButton(array("Guardar", "class" => "btn btn-success")) ?>
    </li>
</ul>

<?php echo $this->getContent() ?>

<div class="left scaffold">
    <h2>Create product types</h2>

    <div class="clearfix">
        <label for="name">Categoria</label>
        <?php echo Tag::textField(array("name", "size" => 24, "maxlength" => 70)) ?>
    </div>

</div>
</form>

<?php use Phalcon\Tag as Tag ?>

<?php echo $this->getContent() ?>

<div align="right">
    <?php echo Tag::linkTo(array("producttypes/new", "Criar categoria", "class" => "btn btn-primary")) ?>
</div>

<?php echo Tag::form(array("producttypes/search", "autocomplete" => "off")) ?>

<div class="left scaffold">

    <h2>Pesquisar categorias</h2>

    <div class="clearfix">
        <label for="id">Id</label>
        <?php echo Tag::textField(array("id", "size" => 10, "maxlength" => 10, "type" => "number")) ?>
    </div>

    <div class="clearfix">
        <label for="name">Nome</label>
        <?php echo Tag::textField(array("name", "size" => 24, "maxlength" => 70)) ?>
    </div>

    <div class="clearfix">
        <?php echo Tag::submitButton(array("Pesquisar", "class" => "btn btn-primary")) ?></td>
    </div>

</div>

</form>

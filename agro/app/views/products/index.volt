<?php use Phalcon\Tag as Tag ?>

<?php echo $this->getContent() ?>

<div align="right">
    <?php echo Tag::linkTo(array("products/new", "Registar Produto", "class" => "btn btn-primary")) ?>
</div>

<?php echo Tag::form(array("products/search", "autocomplete" => "off")) ?>

<div class="center scaffold">

    <h2>Search products</h2>

    <div class="clearfix">
        <label for="id">Id</label>
        <?php echo Tag::textField(array("id", "size" => 10, "maxlength" => 10, "type" => "number")) ?>
    </div>

    <div class="clearfix">
        <label for="product_types_id">Product Type</label>
        <?php echo Tag::select(array("product_types_id", $productTypes, "using" => array("id", "name"), "useDummy" => true)) ?>
    </div>

    <div class="clearfix">
        <label for="name">Nome</label>
        <?php echo Tag::textField(array("name", "size" => 24, "maxlength" => 70)) ?>
    </div>

    <div class="clearfix">
        <label for="price">Preço</label>
        <?php echo Tag::textField(array("price", "size" => 24, "maxlength" => 70, "type" => "number")) ?>
    </div>

    <div class="clearfix">
        <label for="active">Disponivel</label>
        <?php echo Tag::selectStatic(array("active", array('Y'=>'Y','N'=>'N',), "useDummy" => true)) ?>
    </div>

    <div class="clearfix">
        <?php echo Tag::submitButton(array("Search", "class" => "btn btn-primary")) ?></td>
    </div>

</div>

</form>

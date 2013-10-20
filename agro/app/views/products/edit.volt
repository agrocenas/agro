<?php use Phalcon\Tag as Tag ?>

<?php echo Tag::form("products/save") ?>

<ul class="pager">
    <li class="previous pull-left">
        <?php echo Tag::linkTo(array("products", "&larr; Voltar")) ?>
    </li>
    <li class="pull-right">
        <?php echo Tag::submitButton(array("Save", "class" => "btn btn-success")) ?>
    </li>
</ul>

<?php echo $this->getContent() ?>

<div class="left scaffold">
    <h2>Editar produtos</h2>


    <input type="hidden" name="id" id="id" value="<?php echo $id ?>" />

    <div class="clearfix">
        <label for="product_types_id">Tipo de Produto</label>
        <?php echo Tag::select(array("product_types_id", $productTypes, "using" => array("id", "name"), "useDummy" => true)) ?>
    </div>

    <div class="clearfix">
        <label for="name">Nome</label>
        <?php echo Tag::textField(array("name", "size" => 24, "maxlength" => 70)) ?>
    </div>

    <div class="clearfix">
        <label for="price">Preco</label>
        <?php echo Tag::textField(array("price", "size" => 24, "maxlength" => 70, "type" => "number")) ?>
    </div>

    <div class="clearfix">
        <label for="active">Disponivel</label>
        <?php echo Tag::selectStatic(array("active", array('Y'=>'Y','N'=>'N',), "useDummy" => true)) ?>
    </div>

    </form>
</div>

<?php use Phalcon\Tag as Tag ?>

<?php echo $this->getContent() ?>

<ul class="pager">
    <li class="previous pull-left">
        <?php echo Tag::linkTo("products/index", "&larr; Voltar") ?>
    </li>
    <li class="pull-right">
        <?php echo Tag::linkTo(array("products/new", "Registar produto", "class" => "btn btn-primary")) ?>
    </li>
</ul>

<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Nome</th>
            <th>Tipo de produto</th>
            <th>Preco</th>
            <th>Disponivel</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    <?php
        if(isset($page->items)){
            foreach($page->items as $products){ ?>
        <tr>
            <td><?php echo $products->id ?></td>
            <td><?php echo $products->name ?></td>
            <td><?php echo $products->getProductTypes()->name ?></td>
            <td><?php echo (string) $products->price ?></td>
            <td>
                         {% if (products.active == 'Y' ) %}
                            <span class="label label-success">disponivel</span>
                        {% else %}
                            <span class="label label-important">indisponivel</span>
                        {% endif %}
            </td>
            <td width="5%"><?php echo Tag::linkTo(array("products/edit/".$products->id, '<i class="icon-pencil"></i>', "class" => "btn")) ?></td>
            <td width="5%"><?php echo Tag::linkTo(array("products/delete/".$products->id, '<i class="icon-remove"></i>', "class" => "btn")) ?></td>
        </tr>
    <?php }
        } ?>
    </tbody>
    <tbody>
        <tr>
            <td colspan="7" align="right">
                <div class="btn-group">
                    <?php echo Tag::linkTo(array("products/search", '<i class="icon-fast-backward"></i>', "class" => "btn")) ?>
                    <?php echo Tag::linkTo(array("products/search?page=".$page->before, '<i class="icon-step-backward"></i>', "class" => "btn ")) ?>
                    <?php echo Tag::linkTo(array("products/search?page=".$page->next, '<i class="icon-step-forward"></i>', "class" => "btn")) ?>
                    <?php echo Tag::linkTo(array("products/search?page=".$page->last, '<i class="icon-fast-forward"></i>', "class" => "btn")) ?>
                    <span class="help-inline"><?php echo $page->current, "/", $page->total_pages ?></span>
                </div>
            </td>
        </tr>
    <tbody>
</table>
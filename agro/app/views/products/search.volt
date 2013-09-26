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
            <th>Tipo de produto</th>
            <th>Nome</th>
            <th>Preço</th>
            <th>Disponivel</th>
        </tr>
    </thead>
    <tbody>
    <?php
        if(isset($page->items)){
            foreach($page->items as $products){ ?>
        <tr>
            <td><?php echo $products->id ?></td>
            <td><?php echo $products->getProductTypes()->name ?></td>
            <td><?php echo $products->name ?></td>
            <td><?php echo (string) $products->price ?></td>
            <td><?php echo $products->active ?></td>
            <td width="12%"><?php echo Tag::linkTo(array("products/edit/".$products->id, '<i class="icon-pencil"></i> Edit', "class" => "btn")) ?></td>
            <td width="12%"><?php echo Tag::linkTo(array("products/delete/".$products->id, '<i class="icon-remove"></i> Delete', "class" => "btn")) ?></td>
        </tr>
    <?php }
        } ?>
    </tbody>
    <tbody>
        <tr>
            <td colspan="7" align="right">
                <div class="btn-group">
                    <?php echo Tag::linkTo(array("products/search", '<i class="icon-fast-backward"></i> primeiros', "class" => "btn")) ?>
                    <?php echo Tag::linkTo(array("products/search?page=".$page->before, '<i class="icon-step-backward"></i> antes', "class" => "btn ")) ?>
                    <?php echo Tag::linkTo(array("products/search?page=".$page->next, '<i class="icon-step-forward"></i> depois', "class" => "btn")) ?>
                    <?php echo Tag::linkTo(array("products/search?page=".$page->last, '<i class="icon-fast-forward"></i> ultimos', "class" => "btn")) ?>
                    <span class="help-inline"><?php echo $page->current, "/", $page->total_pages ?></span>
                </div>
            </td>
        </tr>
    <tbody>
</table>